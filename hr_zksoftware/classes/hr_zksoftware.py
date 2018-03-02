import zk_api
from openerp.osv import fields, osv

zkcon = zk_api.zkcon()

class hr_zksoftware_devices(osv.osv):
	_name = "hr.zksoft.dev"
	_description = "ZKSoftware Devices"
	
	_columns = {
		'name': fields.char(string="Device Name", required=True),
		'dev_active': fields.boolean(string="Active", help="If device is Active, It will be listed in downloader wizard."),
		'dev_scheduler': fields.boolean(string="Scheduler Active", help="If Enabled, The system will automatically download attendance as scheduled"),
		'dev_num': fields.integer(string="Device Number", required=True),
		'dev_ip': fields.char(string="Host/IP Address", required=True),
		'dev_port': fields.integer(string="Port", required=True),
		'timezone': fields.integer(string="TimeZone", required=True),
		'daylight_saving': fields.boolean(string="Enable Daylight Saving"),
		'daylight_saving_start': fields.datetime(string="Starts From"),
		'daylight_saving_end': fields.datetime(string="Ends At"),
		
		'user_count': fields.char(string="User Count"),
		'user_capacity': fields.char(string="User Capacity"),
		'log_count': fields.char(string="Log Count"),
		'log_capacity': fields.char(string="Log Capacity"),
		'fingerprint_face_count': fields.char(string="Fingerprint/Face Count"),
		'fingerprint_face_capacity': fields.char(string="Fingerprint/Face Capacity"),
		'admin_count': fields.char(string="Admin Count"),
		'password_count': fields.char(string="Password Count"),
		'manufacture_time': fields.char(string="Manufacture Time"),
		'firmware_version': fields.char(string="Firmware Version"),
		'serial_number': fields.char(string="Serial Number"),
		'platform': fields.char(string="Platform"),
		'device_mac': fields.char(string="Device MAC"),
	}
	
	_defaults = {
		'dev_active': True,
		'dev_num': 1,
		'dev_port': 4370,
		'timezone': 2,
	}
	
	def check_connection(self, cr, uid, ids, context=None):
		for zkc in self.browse(cr, uid, ids, context=context):
			res = zkcon.Connect(zkc.dev_ip, zkc.dev_port, zkc.dev_num)
			if res:
				zkcon.Disconnect()
				raise osv.except_osv(('Information'), ('Connection Successful.'))
			else:
				zkcon.Disconnect()
				raise osv.except_osv(('Error'), ('Connection Failure.'))
	
	def get_device_info(self, cr, uid, ids, context=None):
		res = {}
		for zkc in self.browse(cr, uid, ids, context=context):
			isconnected = zkcon.Connect(zkc.dev_ip, zkc.dev_port, zkc.dev_num)
			if isconnected:
				res = {
					'user_count': zkcon.GetRegisteredUsersCount(zkc.dev_num)[1],
					'user_capacity': zkcon.GetUsersCapacity(zkc.dev_num)[1],
					'log_count': zkcon.GetRecordsCount(zkc.dev_num)[1],
					'log_capacity': zkcon.GetRecordingCapacity(zkc.dev_num)[1],
					'fingerprint_face_count': zkcon.GetFingerprintCount(zkc.dev_num)[1],
					'fingerprint_face_capacity': zkcon.GetFingerprintCapacity(zkc.dev_num)[1],
					'admin_count': zkcon.GetAdministratorsCount(zkc.dev_num)[1],
					'password_count': zkcon.GetPasswordCount(zkc.dev_num)[1],
					'manufacture_time': str(zkcon.GetDeviceStrInfo(zkc.dev_num)[1]),
					'firmware_version': str(zkcon.GetFirmwareVersion(zkc.dev_num)[1]),
					'serial_number': str(zkcon.GetSerialNumber(zkc.dev_num)[1]),
					'platform': str(zkcon.GetPlatform(zkc.dev_num)[1]),
					'device_mac': str(zkcon.GetDeviceMAC(zkc.dev_num)[1]),
					}
				self.write(cr, uid, ids, res, context)
				zkcon.Disconnect()
			else:
				msg = zkcon.GetLastError()
				zkcon.Disconnect()
				raise osv.except_osv(('Error'),('Error Code: ' + str(msg)))
		
	def get_device_time(self, cr, uid, ids, context=None):
		for zkc in self.browse(cr, uid, ids, context=context):
			res = zkcon.Connect(zkc.dev_ip, zkc.dev_port, zkc.dev_num)
			if res:
				msg = zkcon.GetDeviceTime(zkc.dev_num)
				zkcon.Disconnect()
				raise osv.except_osv(('Information'),(str(msg[1])+'-'+str(msg[2])+'-'+str(msg[3])+' '+str(msg[4])+':'+str(msg[5])+':'+str(msg[6])))
			else:
				msg = zkcon.GetLastError()
				zkcon.Disconnect()
				raise osv.except_osv(('Error'),('Error Code: ' + str(msg)))
	
	def restart_device(self, cr, uid, ids, context=None):
		for zkc in self.browse(cr, uid, ids, context=context):
			res = zkcon.Connect(zkc.dev_ip, zkc.dev_port, zkc.dev_num)
			if res:
				msg = zkcon.RestartDevice(zkc.dev_num)
				zkcon.Disconnect()
				raise osv.except_osv(('Information'),('Restarting Device...'))
			else:
				msg = zkcon.GetLastError()
				zkcon.Disconnect()
				raise osv.except_osv(('Error'),('Error Code: ' + str(msg)))
	
	def poweroff_device(self, cr, uid, ids, context=None):
		for zkc in self.browse(cr, uid, ids, context=context):
			res = zkcon.Connect(zkc.dev_ip, zkc.dev_port, zkc.dev_num)
			if res:
				msg = zkcon.PowerOffDevice(zkc.dev_num)
				zkcon.Disconnect()
				raise osv.except_osv(('Information'),('Powering Off Device...'))
			else:
				msg = zkcon.GetLastError()
				zkcon.Disconnect()
				raise osv.except_osv(('Error'),('Error Code: ' + str(msg)))
	
	def clear_log(self, cr, uid, ids, context=None):
		for zkc in self.browse(cr, uid, ids, context=context):
			res = zkcon.Connect(zkc.dev_ip, zkc.dev_port, zkc.dev_num)
			if res:
				zkcon.ClearLog(zkc.dev_num)
				zkcon.Disconnect()
			else:
				msg = zkcon.GetLastError()
				zkcon.Disconnect()
				raise osv.except_osv(('Error'),('Error Code: ' + str(msg)))

class hr_attendance(osv.osv):
	_inherit = 'hr.attendance'
	
	_columns = {
		'access_type': fields.selection([
				(0, 'Password'),
				(1, 'Fingerprint'),
				(2, 'Access Card'),
				(15, 'Face ID'),
				(99, 'Unknown')
		], string="Access Type"),
		'timezone': fields.integer(string="TimeZone"),
	}
	
	_defaults = {
		'access_type': 99,
	}
	
	# Disable this constraint
	def _altern_si_so(self, cr, uid, ids, context=None):
		return True
	_constraints = [(_altern_si_so, 'Error ! Sign in (resp. Sign out) must follow Sign out (resp. Sign in)', ['action'])]

class hr_employee(osv.osv):
	_inherit = 'hr.employee'
	
	_columns = {
		'zk_num': fields.integer(string="ZKSoftware Number", help="ZK Attendance User Code"),
	}