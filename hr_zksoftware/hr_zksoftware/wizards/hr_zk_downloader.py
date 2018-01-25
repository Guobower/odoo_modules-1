from openerp.addons.hr_zksoftware.classes import zk_api
from openerp.osv import fields, osv
from datetime import date, datetime, timedelta
import logging

_logger = logging.getLogger(__name__)
zkcon = zk_api.zkcon()
zk_access_type = [0,1,2,15]

class hr_zksoftware_downloader(osv.osv_memory):
	_name = "hr.zksoft.downloader"
	_description = "ZKSoftware Downloader"
	
	_columns = {
		'devices_ids': fields.many2many('hr.zksoft.dev', string="Choose Devices", required=True),
		'all_emp': fields.boolean(string="All Employees"),
		'emp_ids': fields.many2many('hr.employee', string="Employees"),
		'date_range': fields.boolean(string="Filter by Date Range"),
		'date_from': fields.date(string="Date From"),
		'date_to': fields.date(string="Date To"),
	}
	
	def check_dates(self, cr, uid, ids, context=None): 
		wizard = self.browse(cr, uid, ids, context=context)[0]
		if wizard.date_range:
			if wizard.date_from > wizard.date_to:
				return False
			if wizard.date_to > fields.date.today():
				return False
		return True
	
	_constraints = [(check_dates, 'Error: Invalid Dates\nDate From must be less than Date To\nDate To must not be greater than todays date.', ['date_from','date_to']),]
	
	def get_devices(self, cr, uid, context=None):
		zk_dev_obj = self.pool.get('hr.zksoft.dev')
		zk_dev_ids = zk_dev_obj.search(cr, uid, [('dev_active','=',True)], context=context)
		return zk_dev_ids
	
	_defaults = {
		'devices_ids': get_devices,
		'all_emp': True,
		'date_range': True,
		'date_to': fields.date.today,
	}
	
	def action_download(self, cr, uid, ids, context=None):
		mod_obj = self.pool.get('ir.model.data')
		act_obj = self.pool.get('ir.actions.act_window')
		wizard = self.browse(cr, uid, ids, context=context)[0]
		fail_dev = ""
		
		if wizard.devices_ids:
			for dev_line in wizard.devices_ids:
				# Get Connection Data
				ip = dev_line.dev_ip
				port = dev_line.dev_port
				mn = dev_line.dev_num
				tz = dev_line.timezone
				
				# Connect to Device
				isConnected = zkcon.Connect(ip, port, mn)
				
				if isConnected:
					# Store employees here
					emp_records = []
					# Store Attendance Records here
					att_records = []
					
					# Download All Employees
					tmp = zkcon.ReadAllUserID(1)
					while True:
						emp = zkcon.GetAllUserInfo(mn)
						if emp[0]:
							emp_records.append(emp)
						else:
							break

					# Download All Attendance Log
					tmp = zkcon.ReadGeneralLogData(mn)
					while True:
						att = zkcon.GetGeneralLogData(mn)
						if att[0]:
							att_records.append(att)
						else:
							break

					# Disconnect from Device
					zkcon.Disconnect()

					# Storing Attendance Log according to Filter
					self.save_attendance(cr, uid, ids, emp_records, att_records, dev_line, context=context)
					
				else:
					fail_dev += dev_line.dev_ip + "\n"
		else:
			raise osv.except_osv(('Error'), ('No devices listed.\nPlease, add/define a device at least.'))
		
		# After Download Redirect to Attendance Tree View
		# First get View Action Reference Code
		act_obj_ref = mod_obj.get_object_reference(cr, uid, 'hr_attendance', 'open_view_attendance')
		act_id = act_obj_ref and act_obj_ref[1] or False
		result = act_obj.read(cr, uid, [act_id], context=context)[0]
		# Second get Tree View Reference Code
		res = mod_obj.get_object_reference(cr, uid, 'hr_attendance', 'view_attendance_tree')
		result['views'] = [(res and res[1] or False, 'tree')]
		result['res_id'] = False
		
		return result
	
	def action_download_scheduler(self, cr, uid, context=None):
		zkconnection = zk_api.zkcon()
		zk_dev_obj = self.pool.get('hr.zksoft.dev')
		zk_dev_ids = zk_dev_obj.search(cr, uid, [('dev_scheduler','=',True)], context=context)
		
		for dev_line in zk_dev_obj.browse(cr, uid, zk_dev_ids, context=context):
			# Get Connection Data
			ip = dev_line.dev_ip
			port = dev_line.dev_port
			mn = dev_line.dev_num
			tz = dev_line.timezone
			
			# Connect to Device
			isConnected = zkconnection.Connect(ip, port, mn)
			
			if isConnected:
				# Store employees here
				emp_records = []
				# Store Attendance Records here
				att_records = []
				
				# Download All Employees
				tmp = zkconnection.ReadAllUserID(1)
				while True:
					emp = zkconnection.GetAllUserInfo(mn)
					if emp[0]:
						emp_records.append(emp)
					else:
						break

				# Download All Attendance Log
				tmp = zkconnection.ReadGeneralLogData(mn)
				while True:
					att = zkconnection.GetGeneralLogData(mn)
					if att[0]:
						att_records.append(att)
					else:
						break

				# Disconnect from Device
				zkconnection.Disconnect()

				# Storing Attendance Log according to Filter
				self.save_attendance_scheduler(cr, uid, emp_records, att_records, dev_line, context=context)
		return {}
	
	def save_attendance(self, cr, uid, ids, emp_records, att_records, device, context=None):
		# Get Wizard Record
		wizard = self.browse(cr, uid, ids, context=context)[0]
		
		# Create Model Objects
		hr_employee_obj = self.pool.get('hr.employee')
		hr_attendance_obj = self.pool.get('hr.attendance')
		
		# If All Employees
		if wizard.all_emp:
			employee_records = emp_records
		else:
			employee_records = wizard.emp_ids
		
		# Loop Employees Downloaded from the Device
		for emp_record in employee_records:
			if wizard.all_emp:
				emp_record_tmp = emp_record[1]
			else:
				emp_record_tmp = str(emp_record.zk_num)
			
			# Get Employee Profile ID from his/her code on Device
			for emp_id in hr_employee_obj.search(cr, uid, [('zk_num','=',emp_record_tmp)]):
				# Loop Downloaded Log Records
				for att_record in att_records:
					# If Same Employee
					if emp_record_tmp == att_record[1]:
						# Build Date Object from Attendance Data
						dtlog = datetime(att_record[4], att_record[5], att_record[6],
										 att_record[7], att_record[8], att_record[9])
						# Check This Record If Sign In/Out
						# And Build Action Object
						if att_record[3] == 0:
							aclog = 'sign_in'
						else:
							aclog = 'sign_out'
						# Calculate TimeZone Difference
						if device.daylight_saving:
							if device.daylight_saving_start <= dtlog.strftime("%Y-%m-%d %H:%M:%S") and \
								device.daylight_saving_end >= dtlog.strftime("%Y-%m-%d %H:%M:%S"):
								timezone = device.timezone + 1
							else:
								timezone = device.timezone
						else:
							timezone = device.timezone
						dtlog = dtlog - timedelta(hours=timezone)
						# Cast Attendance Model Object
						res = {
							'name': dtlog.strftime("%Y-%m-%d %H:%M:%S"),
							'action': aclog,
							'timezone': timezone,
							'employee_id': emp_id,
						}
						if att_record[2] in zk_access_type:
							res['access_type'] = att_record[2]
						else:
							res['access_type'] = 99
						
						# Check if record previously imported
						condition = [
							('name', '=', dtlog.strftime("%Y-%m-%d %H:%M:%S")),
							('action', '=', aclog),
							('employee_id', '=', emp_id),
						]
						ret_ids = hr_attendance_obj.search(cr, uid, condition, context=context)
						if ret_ids:
							continue
						else:
							# Check If Date Range is Selected
							if wizard.date_range:
								if dtlog.strftime("%Y-%m-%d") >= wizard.date_from and \
									dtlog.strftime("%Y-%m-%d") <= wizard.date_to:
									hr_attendance_obj.create(cr, uid, res, context=context)
								else:
									continue
							else:
								hr_attendance_obj.create(cr, uid, res, context=context)
		return True
	
	def save_attendance_scheduler(self, cr, uid, emp_records, att_records, timezone, context=None):
		# Create Model Objects
		hr_employee_obj = self.pool.get('hr.employee')
		hr_attendance_obj = self.pool.get('hr.attendance')
		
		# Loop Employees Downloaded from Device
		for emp_record in emp_records:
			# Get Employee ID from his/her code on Device
			for emp_id in hr_employee_obj.search(cr, uid, [('zk_num','=',emp_record[1])]):
				# Loop Downloaded Log Records
				for att_record in att_records:
					# If Same Employee
					if emp_record[1] == att_record[1]:
						# Build Date Object from Attendance Data
						dtlog = datetime(att_record[4], att_record[5], att_record[6],
										 att_record[7], att_record[8], att_record[9])
						# Check This Record If Sign In/Out
						# And Build Action Object
						if att_record[3] == 0:
							aclog = 'sign_in'
						else:
							aclog = 'sign_out'
						# Calculate TimeZone Difference
						if device.daylight_saving:
							if device.daylight_saving_start <= dtlog.strftime("%Y-%m-%d %H:%M:%S") and \
								device.daylight_saving_end >= dtlog.strftime("%Y-%m-%d %H:%M:%S"):
								timezone = device.timezone + 1
							else:
								timezone = device.timezone
						else:
							timezone = device.timezone
						dtlog = dtlog - timedelta(hours=timezone)
						# Cast Attendance Model Object
						res = {
							'name': dtlog.strftime("%Y-%m-%d %H:%M:%S"),
							'action': aclog,
							'timezone': timezone,
							'employee_id': emp_id,
						}
						if att_record[2] in zk_access_type:
							res['access_type'] = att_record[2]
						else:
							res['access_type'] = 99
						
						# Check if record previously imported
						condition = [
							('name','=',dtlog.strftime("%Y-%m-%d %H:%M:%S")),
							('action', '=', aclog),
							('employee_id','=',emp_id),
						]
						ret_ids = hr_attendance_obj.search(cr, uid, condition, context=context)
						if ret_ids:
							continue
						else:
							hr_attendance_obj.create(cr, uid, res, context=context)
		return True