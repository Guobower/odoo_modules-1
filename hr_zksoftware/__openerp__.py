{
	'name' : "ZKTeco Devices Integration",
	'version' : "2.0",
	'author' : "KnowledgeWare Co.",
	'category' : 'Hidden',
	'website' : 'http://www.kware-eg.com',
	'depends' : ['base','web','hr','hr_attendance'],
	'description':"""
ZKTeco Devices Integration
==========================
	* Now you can download Attendance Log from any ZKTeco Biometric Attendance Device.
	* This Module works only on Windows platform that's due to SDK restrictions provided by machine vendor.
	""",
	'data' : [
		'views/hr_zksoftware_view.xml',
		'wizards/views/hr_zk_downloader_view.xml',
		'data/scheduled_action_data.xml',
		'security/ir.model.access.csv',
	],
}