"""
idwVerifyMode
0 = Password
1 = Fingerprint
2 = AccessCard
15 = Face Recognition
"""

"""
1 = Administrator Count
2 = Register users Count
3 = Fingerprint template Count
4 = Password Count
5 = The record number of times which administrator perform management.
6 = Attendance records number of times.
7 = Fingerprint capacity.
8 = Users capacity
9 = Recording capacity
"""

import pythoncom
try:
	from win32com.client import Dispatch
except ImportError:
	import sys
	del sys.frozen
	from win32com.client import Dispatch

class zkcon(object):
	
	def __init__(self):
		pythoncom.CoInitialize()
		self.zk = Dispatch("zkemkeeper.ZKEM")
	
	def Connect(self, IP, Port, iMachineNumber=1):
		result = self.zk.Connect_Net(IP, Port)
		if result:
			self.zk.RegEvent(iMachineNumber, 65535)
		return result
	
	def Disconnect(self):
		return self.zk.Disconnect()
		
	def EnableDevice(self, iMachineNumber=1):
		return self.zk.EnableDevice(iMachineNumber, 1)
		
	def DisableDevice(self, iMachineNumber=1):
		return self.zk.EnableDevice(iMachineNumber, 0)
		
	def DisableDeviceWithTimeOut(self, iSeconds, iMachineNumber=1):
		return DisableDeviceWithTimeOut(iMachineNumber, iSeconds)
	
	def ClearLog(self, iMachineNumber=1):
		return self.zk.ClearGLog(iMachineNumber)
	
	def ReadAllUserID(self, iMachineNumber=1):
		return self.zk.ReadAllUserID(iMachineNumber)
	
	def GetAllUserInfo(self, iMachineNumber=1):
		platform = self.IsTFTMachine(iMachineNumber)
		if platform:
			return self.zk.SSR_GetAllUserInfo(iMachineNumber, "", "", "", 0, False)
		return self.zk.GetAllUserInfo(iMachineNumber, "", "", "", 0, False)
	
	def ReadGeneralLogData(self, iMachineNumber=1):
		return self.zk.ReadGeneralLogData(iMachineNumber)
	
	def GetGeneralLogData(self, iMachineNumber=1):
		platform = self.IsTFTMachine(iMachineNumber)
		if platform:
			return self.zk.SSR_GetGeneralLogData(iMachineNumber, "", 0, 0, 0, 0, 0, 0, 0, 0, 0)
		return self.zk.GetGeneralLogData(iMachineNumber, 0, "", 0, 0, 0, 0, 0, 0, 0, 0, 0)
			
	def GetLastError(self):
		return self.zk.GetLastError(0)
	
	def GetDeviceStatus(self, iStatus, iMachineNumber=1):
		return self.zk.GetDeviceStatus(iMachineNumber, iStatus, 0)
	
	def GetAdministratorsCount(self, iMachineNumber=1):
		return self.zk.GetDeviceStatus(iMachineNumber, 1, 0)
	
	def GetRegisteredUsersCount(self, iMachineNumber=1):
		return self.zk.GetDeviceStatus(iMachineNumber, 2, 0)
	
	def GetFingerprintCount(self, iMachineNumber=1):
		return self.zk.GetDeviceStatus(iMachineNumber, 3, 0)
	
	def GetPasswordCount(self, iMachineNumber=1):
		return self.zk.GetDeviceStatus(iMachineNumber, 4, 0)
	
	def GetAdministratorsLoginCount(self, iMachineNumber=1):
		return self.zk.GetDeviceStatus(iMachineNumber, 5, 0)
	
	def GetRecordsCount(self, iMachineNumber=1):
		return self.zk.GetDeviceStatus(iMachineNumber, 6, 0)
	
	def GetFingerprintCapacity(self, iMachineNumber=1):
		return self.zk.GetDeviceStatus(iMachineNumber, 7, 0)
	
	def GetUsersCapacity(self, iMachineNumber=1):
		return self.zk.GetDeviceStatus(iMachineNumber, 8, 0)
	
	def GetRecordingCapacity(self, iMachineNumber=1):
		return self.zk.GetDeviceStatus(iMachineNumber, 9, 0)
	
	def RestartDevice(self, iMachineNumber=1):
		return self.zk.RestartDevice(iMachineNumber)
	
	def PowerOffDevice(self, iMachineNumber=1):
		return self.zk.PowerOffDevice(iMachineNumber)
	
	def GetDeviceTime(self, iMachineNumber=1):
		return self.zk.GetDeviceTime(iMachineNumber, 0, 0, 0, 0, 0, 0)
		
	def SetDeviceTime(self, iMachineNumber=1, idwYear=0, idwMonth=0, idwDay=0,
					idwHour=0, idwMinute=0, idwSecond=0):
		result = None
		if iMachineNumber == 1 and idwYear == 0 and idwMonth == 0 and idwDay == 0 \
			and idwHour == 0 and idwMinute == 0 and idwSecond == 0:
			result = self.zk.SetDeviceTime(iMachineNumber)
			if result:
				self.zk.RefreshData(iMachineNumber)
				return result
		return self.zk.SetDeviceTime2(iMachineNumber, idwYear, idwMonth, idwDay, idwHour, idwMinute, idwSecond)
	
	def GetPlatform(self, iMachineNumber=1):
		return self.zk.GetPlatform(iMachineNumber, "")
	
	def GetDeviceStrInfo(self, iMachineNumber=1):
		# Get Manufacturing Date
		platform = self.IsTFTMachine(iMachineNumber)
		if platform:
			return self.zk.GetDeviceStrInfo(iMachineNumber, 1, "")
		return ""
	
	def GetFirmwareVersion(self, iMachineNumber=1):
		return self.zk.GetFirmwareVersion(iMachineNumber, "")
	
	def GetDeviceMAC(self, iMachineNumber=1):
		return self.zk.GetDeviceMAC(iMachineNumber, "")
	
	def GetSerialNumber(self, iMachineNumber=1):
		return self.zk.GetSerialNumber(iMachineNumber, "")
	
	def IsTFTMachine(self, iMachineNumber=1):
		return self.zk.IsTFTMachine(iMachineNumber)
	
	def Beep(self, iMilliSeconds=100):
		return self.zk.Beep(iMilliSeconds)