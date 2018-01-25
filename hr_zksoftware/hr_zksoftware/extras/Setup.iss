[Setup]
AppName=ZKTeco Odoo Integration
AppVersion=0.1
AppCopyright=2015
AppMutex=_odoo_zkteco_
AppId={{767102FF-5538-4B04-9FC7-3F51B73E8004}
AppPublisher=KnowledgeWare Co.
AppPublisherURL=http://www.kware-eg.com
VersionInfoVersion=0.2
VersionInfoCompany=KnowledgeWare Co.
VersionInfoTextVersion=0.2
VersionInfoCopyright=2015
VersionInfoProductVersion=0.2
VersionInfoProductTextVersion=0.2
SolidCompression=True
Compression=lzma2/ultra64
InternalCompressLevel=ultra
MinVersion=0,5.01sp3
VersionInfoProductName=ZKTeco Odoo Integration
Uninstallable=no
DefaultDirName={pf}\ZKTeco Odoo Integration
AppendDefaultDirName=False

[Files]
Source: ".\Input\dlls\64bit\commpro.dll"; DestDir: "{syswow64}"; Flags: ignoreversion; Check: Is64BitInstallMode
Source: ".\Input\dlls\64bit\comms.dll"; DestDir: "{syswow64}"; Flags: ignoreversion; Check: Is64BitInstallMode
Source: ".\Input\dlls\64bit\plce.dll"; DestDir: "{syswow64}"; Flags: ignoreversion; Check: Is64BitInstallMode
Source: ".\Input\dlls\64bit\rscagent.dll"; DestDir: "{syswow64}"; Flags: ignoreversion; Check: Is64BitInstallMode
Source: ".\Input\dlls\64bit\rscomm.dll"; DestDir: "{syswow64}"; Flags: ignoreversion; Check: Is64BitInstallMode
Source: ".\Input\dlls\64bit\tcpcomm.dll"; DestDir: "{syswow64}"; Flags: ignoreversion; Check: Is64BitInstallMode
Source: ".\Input\dlls\64bit\usbcomm.dll"; DestDir: "{syswow64}"; Flags: ignoreversion; Check: Is64BitInstallMode
Source: ".\Input\dlls\64bit\zkemkeeper.dll"; DestDir: "{syswow64}"; Flags: ignoreversion regserver; Check: Is64BitInstallMode
Source: ".\Input\dlls\64bit\zkemsdk.dll"; DestDir: "{syswow64}"; Flags: ignoreversion; Check: Is64BitInstallMode

Source: ".\Input\dlls\32bit\commpro.dll"; DestDir: "{sys}"; Flags: ignoreversion; Check: not Is64BitInstallMode
Source: ".\Input\dlls\32bit\comms.dll"; DestDir: "{sys}"; Flags: ignoreversion; Check: not Is64BitInstallMode
Source: ".\Input\dlls\32bit\plce.dll"; DestDir: "{sys}"; Flags: ignoreversion; Check: not Is64BitInstallMode
Source: ".\Input\dlls\32bit\rscagent.dll"; DestDir: "{sys}"; Flags: ignoreversion; Check: not Is64BitInstallMode
Source: ".\Input\dlls\32bit\rscomm.dll"; DestDir: "{sys}"; Flags: ignoreversion; Check: not Is64BitInstallMode
Source: ".\Input\dlls\32bit\tcpcomm.dll"; DestDir: "{sys}"; Flags: ignoreversion; Check: not Is64BitInstallMode
Source: ".\Input\dlls\32bit\usbcomm.dll"; DestDir: "{sys}"; Flags: ignoreversion; Check: not Is64BitInstallMode
Source: ".\Input\dlls\32bit\zkemkeeper.dll"; DestDir: "{sys}"; Flags: ignoreversion regserver; Check: not Is64BitInstallMode
Source: ".\Input\dlls\32bit\zkemsdk.dll"; DestDir: "{sys}"; Flags: ignoreversion; Check: not Is64BitInstallMode

Source: ".\Input\python\pythoncom.py"; DestDir: "{app}"; Flags: ignoreversion
Source: ".\Input\python\pythoncom27.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: ".\Input\python\pythoncomloader27.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: ".\Input\python\pywintypes27.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: ".\Input\python\PyWin32.chm"; DestDir: "{app}"; Flags: ignoreversion
Source: ".\Input\python\pywin32.pth"; DestDir: "{app}"; Flags: ignoreversion
Source: ".\Input\python\pywin32.version.txt"; DestDir: "{app}"; Flags: ignoreversion

Source: ".\Input\python\adodbapi\adodbapi.py"; DestDir: "{app}\adodbapi"; Flags: ignoreversion
Source: ".\Input\python\adodbapi\ado_consts.py"; DestDir: "{app}\adodbapi"; Flags: ignoreversion
Source: ".\Input\python\adodbapi\is64bit.py"; DestDir: "{app}\adodbapi"; Flags: ignoreversion
Source: ".\Input\python\adodbapi\license.txt"; DestDir: "{app}\adodbapi"; Flags: ignoreversion
Source: ".\Input\python\adodbapi\readme.txt"; DestDir: "{app}\adodbapi"; Flags: ignoreversion
Source: ".\Input\python\adodbapi\schema_table.py"; DestDir: "{app}\adodbapi"; Flags: ignoreversion
Source: ".\Input\python\adodbapi\__init__.py"; DestDir: "{app}\adodbapi"; Flags: ignoreversion
Source: ".\Input\python\adodbapi\examples\db_print.py"; DestDir: "{app}\adodbapi\examples"; Flags: ignoreversion
Source: ".\Input\python\adodbapi\examples\db_table_names.py"; DestDir: "{app}\adodbapi\examples"; Flags: ignoreversion
Source: ".\Input\python\adodbapi\examples\xls_read.py"; DestDir: "{app}\adodbapi\examples"; Flags: ignoreversion
Source: ".\Input\python\adodbapi\examples\xls_write.py"; DestDir: "{app}\adodbapi\examples"; Flags: ignoreversion
Source: ".\Input\python\adodbapi\test\adodbapitest.py"; DestDir: "{app}\adodbapi\test"; Flags: ignoreversion
Source: ".\Input\python\adodbapi\test\adodbapitestconfig.py"; DestDir: "{app}\adodbapi\test"; Flags: ignoreversion
Source: ".\Input\python\adodbapi\test\dbapi20.py"; DestDir: "{app}\adodbapi\test"; Flags: ignoreversion
Source: ".\Input\python\adodbapi\test\is64bit.py"; DestDir: "{app}\adodbapi\test"; Flags: ignoreversion
Source: ".\Input\python\adodbapi\test\setuptestframework.py"; DestDir: "{app}\adodbapi\test"; Flags: ignoreversion
Source: ".\Input\python\adodbapi\test\test_adodbapi_dbapi20.py"; DestDir: "{app}\adodbapi\test"; Flags: ignoreversion
Source: ".\Input\python\adodbapi\test\tryconnection2.py"; DestDir: "{app}\adodbapi\test"; Flags: ignoreversion
Source: ".\Input\python\adodbapi\test\tryconnection3.py"; DestDir: "{app}\adodbapi\test"; Flags: ignoreversion
Source: ".\Input\python\isapi\install.py"; DestDir: "{app}\isapi"; Flags: ignoreversion
Source: ".\Input\python\isapi\isapicon.py"; DestDir: "{app}\isapi"; Flags: ignoreversion
Source: ".\Input\python\isapi\PyISAPI_loader.dll"; DestDir: "{app}\isapi"; Flags: ignoreversion
Source: ".\Input\python\isapi\README.txt"; DestDir: "{app}\isapi"; Flags: ignoreversion
Source: ".\Input\python\isapi\simple.py"; DestDir: "{app}\isapi"; Flags: ignoreversion
Source: ".\Input\python\isapi\threaded_extension.py"; DestDir: "{app}\isapi"; Flags: ignoreversion
Source: ".\Input\python\isapi\__init__.py"; DestDir: "{app}\isapi"; Flags: ignoreversion
Source: ".\Input\python\isapi\doc\isapi.html"; DestDir: "{app}\isapi\doc"; Flags: ignoreversion
Source: ".\Input\python\isapi\samples\advanced.py"; DestDir: "{app}\isapi\samples"; Flags: ignoreversion
Source: ".\Input\python\isapi\samples\README.txt"; DestDir: "{app}\isapi\samples"; Flags: ignoreversion
Source: ".\Input\python\isapi\samples\redirector.py"; DestDir: "{app}\isapi\samples"; Flags: ignoreversion
Source: ".\Input\python\isapi\samples\redirector_asynch.py"; DestDir: "{app}\isapi\samples"; Flags: ignoreversion
Source: ".\Input\python\isapi\samples\redirector_with_filter.py"; DestDir: "{app}\isapi\samples"; Flags: ignoreversion
Source: ".\Input\python\isapi\samples\test.py"; DestDir: "{app}\isapi\samples"; Flags: ignoreversion
Source: ".\Input\python\isapi\test\extension_simple.py"; DestDir: "{app}\isapi\test"; Flags: ignoreversion
Source: ".\Input\python\isapi\test\README.txt"; DestDir: "{app}\isapi\test"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\dde.pyd"; DestDir: "{app}\pythonwin"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\license.txt"; DestDir: "{app}\pythonwin"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\mfc90.dll"; DestDir: "{app}\pythonwin"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\mfc90u.dll"; DestDir: "{app}\pythonwin"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\mfcm90.dll"; DestDir: "{app}\pythonwin"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\mfcm90u.dll"; DestDir: "{app}\pythonwin"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\Microsoft.VC90.MFC.manifest"; DestDir: "{app}\pythonwin"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\Pythonwin.exe"; DestDir: "{app}\pythonwin"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\scintilla.dll"; DestDir: "{app}\pythonwin"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\win32ui.pyd"; DestDir: "{app}\pythonwin"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\win32uiole.pyd"; DestDir: "{app}\pythonwin"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\default.cfg"; DestDir: "{app}\pythonwin\pywin"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\IDLE.cfg"; DestDir: "{app}\pythonwin\pywin"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\__init__.py"; DestDir: "{app}\pythonwin\pywin"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\debugger\configui.py"; DestDir: "{app}\pythonwin\pywin\debugger"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\debugger\dbgcon.py"; DestDir: "{app}\pythonwin\pywin\debugger"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\debugger\dbgpyapp.py"; DestDir: "{app}\pythonwin\pywin\debugger"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\debugger\debugger.py"; DestDir: "{app}\pythonwin\pywin\debugger"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\debugger\fail.py"; DestDir: "{app}\pythonwin\pywin\debugger"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\debugger\__init__.py"; DestDir: "{app}\pythonwin\pywin\debugger"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\Demos\cmdserver.py"; DestDir: "{app}\pythonwin\pywin\Demos"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\Demos\createwin.py"; DestDir: "{app}\pythonwin\pywin\Demos"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\Demos\demoutils.py"; DestDir: "{app}\pythonwin\pywin\Demos"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\Demos\dibdemo.py"; DestDir: "{app}\pythonwin\pywin\Demos"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\Demos\dlgtest.py"; DestDir: "{app}\pythonwin\pywin\Demos"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\Demos\dyndlg.py"; DestDir: "{app}\pythonwin\pywin\Demos"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\Demos\fontdemo.py"; DestDir: "{app}\pythonwin\pywin\Demos"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\Demos\guidemo.py"; DestDir: "{app}\pythonwin\pywin\Demos"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\Demos\hiertest.py"; DestDir: "{app}\pythonwin\pywin\Demos"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\Demos\menutest.py"; DestDir: "{app}\pythonwin\pywin\Demos"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\Demos\objdoc.py"; DestDir: "{app}\pythonwin\pywin\Demos"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\Demos\openGLDemo.py"; DestDir: "{app}\pythonwin\pywin\Demos"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\Demos\progressbar.py"; DestDir: "{app}\pythonwin\pywin\Demos"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\Demos\sliderdemo.py"; DestDir: "{app}\pythonwin\pywin\Demos"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\Demos\splittst.py"; DestDir: "{app}\pythonwin\pywin\Demos"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\Demos\threadedgui.py"; DestDir: "{app}\pythonwin\pywin\Demos"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\Demos\toolbar.py"; DestDir: "{app}\pythonwin\pywin\Demos"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\Demos\app\basictimerapp.py"; DestDir: "{app}\pythonwin\pywin\Demos\app"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\Demos\app\customprint.py"; DestDir: "{app}\pythonwin\pywin\Demos\app"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\Demos\app\demoutils.py"; DestDir: "{app}\pythonwin\pywin\Demos\app"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\Demos\app\dlgappdemo.py"; DestDir: "{app}\pythonwin\pywin\Demos\app"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\Demos\app\dojobapp.py"; DestDir: "{app}\pythonwin\pywin\Demos\app"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\Demos\app\helloapp.py"; DestDir: "{app}\pythonwin\pywin\Demos\app"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\Demos\ocx\demoutils.py"; DestDir: "{app}\pythonwin\pywin\Demos\ocx"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\Demos\ocx\flash.py"; DestDir: "{app}\pythonwin\pywin\Demos\ocx"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\Demos\ocx\msoffice.py"; DestDir: "{app}\pythonwin\pywin\Demos\ocx"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\Demos\ocx\ocxserialtest.py"; DestDir: "{app}\pythonwin\pywin\Demos\ocx"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\Demos\ocx\ocxtest.py"; DestDir: "{app}\pythonwin\pywin\Demos\ocx"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\Demos\ocx\webbrowser.py"; DestDir: "{app}\pythonwin\pywin\Demos\ocx"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\Demos\ocx\__init__.py"; DestDir: "{app}\pythonwin\pywin\Demos\ocx"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\dialogs\ideoptions.py"; DestDir: "{app}\pythonwin\pywin\dialogs"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\dialogs\list.py"; DestDir: "{app}\pythonwin\pywin\dialogs"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\dialogs\login.py"; DestDir: "{app}\pythonwin\pywin\dialogs"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\dialogs\status.py"; DestDir: "{app}\pythonwin\pywin\dialogs"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\dialogs\__init__.py"; DestDir: "{app}\pythonwin\pywin\dialogs"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\docking\DockingBar.py"; DestDir: "{app}\pythonwin\pywin\docking"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\docking\__init__.py"; DestDir: "{app}\pythonwin\pywin\docking"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\framework\app.py"; DestDir: "{app}\pythonwin\pywin\framework"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\framework\bitmap.py"; DestDir: "{app}\pythonwin\pywin\framework"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\framework\cmdline.py"; DestDir: "{app}\pythonwin\pywin\framework"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\framework\dbgcommands.py"; DestDir: "{app}\pythonwin\pywin\framework"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\framework\dlgappcore.py"; DestDir: "{app}\pythonwin\pywin\framework"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\framework\help.py"; DestDir: "{app}\pythonwin\pywin\framework"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\framework\interact.py"; DestDir: "{app}\pythonwin\pywin\framework"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\framework\intpyapp.py"; DestDir: "{app}\pythonwin\pywin\framework"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\framework\intpydde.py"; DestDir: "{app}\pythonwin\pywin\framework"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\framework\mdi_pychecker.py"; DestDir: "{app}\pythonwin\pywin\framework"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\framework\scriptutils.py"; DestDir: "{app}\pythonwin\pywin\framework"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\framework\sgrepmdi.py"; DestDir: "{app}\pythonwin\pywin\framework"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\framework\startup.py"; DestDir: "{app}\pythonwin\pywin\framework"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\framework\stdin.py"; DestDir: "{app}\pythonwin\pywin\framework"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\framework\toolmenu.py"; DestDir: "{app}\pythonwin\pywin\framework"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\framework\window.py"; DestDir: "{app}\pythonwin\pywin\framework"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\framework\winout.py"; DestDir: "{app}\pythonwin\pywin\framework"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\framework\__init__.py"; DestDir: "{app}\pythonwin\pywin\framework"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\framework\editor\configui.py"; DestDir: "{app}\pythonwin\pywin\framework\editor"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\framework\editor\document.py"; DestDir: "{app}\pythonwin\pywin\framework\editor"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\framework\editor\editor.py"; DestDir: "{app}\pythonwin\pywin\framework\editor"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\framework\editor\frame.py"; DestDir: "{app}\pythonwin\pywin\framework\editor"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\framework\editor\ModuleBrowser.py"; DestDir: "{app}\pythonwin\pywin\framework\editor"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\framework\editor\template.py"; DestDir: "{app}\pythonwin\pywin\framework\editor"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\framework\editor\vss.py"; DestDir: "{app}\pythonwin\pywin\framework\editor"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\framework\editor\__init__.py"; DestDir: "{app}\pythonwin\pywin\framework\editor"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\framework\editor\color\coloreditor.py"; DestDir: "{app}\pythonwin\pywin\framework\editor\color"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\framework\editor\color\__init__.py"; DestDir: "{app}\pythonwin\pywin\framework\editor\color"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\idle\AutoExpand.py"; DestDir: "{app}\pythonwin\pywin\idle"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\idle\AutoIndent.py"; DestDir: "{app}\pythonwin\pywin\idle"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\idle\CallTips.py"; DestDir: "{app}\pythonwin\pywin\idle"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\idle\FormatParagraph.py"; DestDir: "{app}\pythonwin\pywin\idle"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\idle\IdleHistory.py"; DestDir: "{app}\pythonwin\pywin\idle"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\idle\PyParse.py"; DestDir: "{app}\pythonwin\pywin\idle"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\idle\__init__.py"; DestDir: "{app}\pythonwin\pywin\idle"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\mfc\activex.py"; DestDir: "{app}\pythonwin\pywin\mfc"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\mfc\afxres.py"; DestDir: "{app}\pythonwin\pywin\mfc"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\mfc\dialog.py"; DestDir: "{app}\pythonwin\pywin\mfc"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\mfc\docview.py"; DestDir: "{app}\pythonwin\pywin\mfc"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\mfc\object.py"; DestDir: "{app}\pythonwin\pywin\mfc"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\mfc\thread.py"; DestDir: "{app}\pythonwin\pywin\mfc"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\mfc\window.py"; DestDir: "{app}\pythonwin\pywin\mfc"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\mfc\__init__.py"; DestDir: "{app}\pythonwin\pywin\mfc"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\scintilla\bindings.py"; DestDir: "{app}\pythonwin\pywin\scintilla"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\scintilla\config.py"; DestDir: "{app}\pythonwin\pywin\scintilla"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\scintilla\configui.py"; DestDir: "{app}\pythonwin\pywin\scintilla"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\scintilla\control.py"; DestDir: "{app}\pythonwin\pywin\scintilla"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\scintilla\document.py"; DestDir: "{app}\pythonwin\pywin\scintilla"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\scintilla\find.py"; DestDir: "{app}\pythonwin\pywin\scintilla"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\scintilla\formatter.py"; DestDir: "{app}\pythonwin\pywin\scintilla"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\scintilla\IDLEenvironment.py"; DestDir: "{app}\pythonwin\pywin\scintilla"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\scintilla\keycodes.py"; DestDir: "{app}\pythonwin\pywin\scintilla"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\scintilla\scintillacon.py"; DestDir: "{app}\pythonwin\pywin\scintilla"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\scintilla\view.py"; DestDir: "{app}\pythonwin\pywin\scintilla"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\scintilla\__init__.py"; DestDir: "{app}\pythonwin\pywin\scintilla"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\tools\browseProjects.py"; DestDir: "{app}\pythonwin\pywin\tools"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\tools\browser.py"; DestDir: "{app}\pythonwin\pywin\tools"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\tools\hierlist.py"; DestDir: "{app}\pythonwin\pywin\tools"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\tools\regedit.py"; DestDir: "{app}\pythonwin\pywin\tools"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\tools\regpy.py"; DestDir: "{app}\pythonwin\pywin\tools"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\tools\TraceCollector.py"; DestDir: "{app}\pythonwin\pywin\tools"; Flags: ignoreversion
Source: ".\Input\python\pythonwin\pywin\tools\__init__.py"; DestDir: "{app}\pythonwin\pywin\tools"; Flags: ignoreversion
Source: ".\Input\python\win32\license.txt"; DestDir: "{app}\win32"; Flags: ignoreversion
Source: ".\Input\python\win32\mmapfile.pyd"; DestDir: "{app}\win32"; Flags: ignoreversion
Source: ".\Input\python\win32\odbc.pyd"; DestDir: "{app}\win32"; Flags: ignoreversion
Source: ".\Input\python\win32\perfmon.pyd"; DestDir: "{app}\win32"; Flags: ignoreversion
Source: ".\Input\python\win32\perfmondata.dll"; DestDir: "{app}\win32"; Flags: ignoreversion
Source: ".\Input\python\win32\pythonservice.exe"; DestDir: "{app}\win32"; Flags: ignoreversion
Source: ".\Input\python\win32\servicemanager.pyd"; DestDir: "{app}\win32"; Flags: ignoreversion
Source: ".\Input\python\win32\timer.pyd"; DestDir: "{app}\win32"; Flags: ignoreversion
Source: ".\Input\python\win32\win2kras.pyd"; DestDir: "{app}\win32"; Flags: ignoreversion
Source: ".\Input\python\win32\win32api.pyd"; DestDir: "{app}\win32"; Flags: ignoreversion
Source: ".\Input\python\win32\win32clipboard.pyd"; DestDir: "{app}\win32"; Flags: ignoreversion
Source: ".\Input\python\win32\win32console.pyd"; DestDir: "{app}\win32"; Flags: ignoreversion
Source: ".\Input\python\win32\win32cred.pyd"; DestDir: "{app}\win32"; Flags: ignoreversion
Source: ".\Input\python\win32\win32crypt.pyd"; DestDir: "{app}\win32"; Flags: ignoreversion
Source: ".\Input\python\win32\win32event.pyd"; DestDir: "{app}\win32"; Flags: ignoreversion
Source: ".\Input\python\win32\win32evtlog.pyd"; DestDir: "{app}\win32"; Flags: ignoreversion
Source: ".\Input\python\win32\win32file.pyd"; DestDir: "{app}\win32"; Flags: ignoreversion
Source: ".\Input\python\win32\win32gui.pyd"; DestDir: "{app}\win32"; Flags: ignoreversion
Source: ".\Input\python\win32\win32help.pyd"; DestDir: "{app}\win32"; Flags: ignoreversion
Source: ".\Input\python\win32\win32inet.pyd"; DestDir: "{app}\win32"; Flags: ignoreversion
Source: ".\Input\python\win32\win32job.pyd"; DestDir: "{app}\win32"; Flags: ignoreversion
Source: ".\Input\python\win32\win32lz.pyd"; DestDir: "{app}\win32"; Flags: ignoreversion
Source: ".\Input\python\win32\win32net.pyd"; DestDir: "{app}\win32"; Flags: ignoreversion
Source: ".\Input\python\win32\win32pdh.pyd"; DestDir: "{app}\win32"; Flags: ignoreversion
Source: ".\Input\python\win32\win32pipe.pyd"; DestDir: "{app}\win32"; Flags: ignoreversion
Source: ".\Input\python\win32\win32print.pyd"; DestDir: "{app}\win32"; Flags: ignoreversion
Source: ".\Input\python\win32\win32process.pyd"; DestDir: "{app}\win32"; Flags: ignoreversion
Source: ".\Input\python\win32\win32profile.pyd"; DestDir: "{app}\win32"; Flags: ignoreversion
Source: ".\Input\python\win32\win32ras.pyd"; DestDir: "{app}\win32"; Flags: ignoreversion
Source: ".\Input\python\win32\win32security.pyd"; DestDir: "{app}\win32"; Flags: ignoreversion
Source: ".\Input\python\win32\win32service.pyd"; DestDir: "{app}\win32"; Flags: ignoreversion
Source: ".\Input\python\win32\win32trace.pyd"; DestDir: "{app}\win32"; Flags: ignoreversion
Source: ".\Input\python\win32\win32transaction.pyd"; DestDir: "{app}\win32"; Flags: ignoreversion
Source: ".\Input\python\win32\win32ts.pyd"; DestDir: "{app}\win32"; Flags: ignoreversion
Source: ".\Input\python\win32\win32wnet.pyd"; DestDir: "{app}\win32"; Flags: ignoreversion
Source: ".\Input\python\win32\winxpgui.pyd"; DestDir: "{app}\win32"; Flags: ignoreversion
Source: ".\Input\python\win32\_win32sysloader.pyd"; DestDir: "{app}\win32"; Flags: ignoreversion
Source: ".\Input\python\win32\_winxptheme.pyd"; DestDir: "{app}\win32"; Flags: ignoreversion
Source: ".\Input\python\win32\Demos\BackupRead_BackupWrite.py"; DestDir: "{app}\win32\Demos"; Flags: ignoreversion
Source: ".\Input\python\win32\Demos\BackupSeek_streamheaders.py"; DestDir: "{app}\win32\Demos"; Flags: ignoreversion
Source: ".\Input\python\win32\Demos\cerapi.py"; DestDir: "{app}\win32\Demos"; Flags: ignoreversion
Source: ".\Input\python\win32\Demos\CopyFileEx.py"; DestDir: "{app}\win32\Demos"; Flags: ignoreversion
Source: ".\Input\python\win32\Demos\CreateFileTransacted_MiniVersion.py"; DestDir: "{app}\win32\Demos"; Flags: ignoreversion
Source: ".\Input\python\win32\Demos\desktopmanager.py"; DestDir: "{app}\win32\Demos"; Flags: ignoreversion
Source: ".\Input\python\win32\Demos\eventLogDemo.py"; DestDir: "{app}\win32\Demos"; Flags: ignoreversion
Source: ".\Input\python\win32\Demos\EvtSubscribe_pull.py"; DestDir: "{app}\win32\Demos"; Flags: ignoreversion
Source: ".\Input\python\win32\Demos\EvtSubscribe_push.py"; DestDir: "{app}\win32\Demos"; Flags: ignoreversion
Source: ".\Input\python\win32\Demos\FileSecurityTest.py"; DestDir: "{app}\win32\Demos"; Flags: ignoreversion
Source: ".\Input\python\win32\Demos\getfilever.py"; DestDir: "{app}\win32\Demos"; Flags: ignoreversion
Source: ".\Input\python\win32\Demos\GetSaveFileName.py"; DestDir: "{app}\win32\Demos"; Flags: ignoreversion
Source: ".\Input\python\win32\Demos\mmapfile_demo.py"; DestDir: "{app}\win32\Demos"; Flags: ignoreversion
Source: ".\Input\python\win32\Demos\NetValidatePasswordPolicy.py"; DestDir: "{app}\win32\Demos"; Flags: ignoreversion
Source: ".\Input\python\win32\Demos\OpenEncryptedFileRaw.py"; DestDir: "{app}\win32\Demos"; Flags: ignoreversion
Source: ".\Input\python\win32\Demos\print_desktop.py"; DestDir: "{app}\win32\Demos"; Flags: ignoreversion
Source: ".\Input\python\win32\Demos\rastest.py"; DestDir: "{app}\win32\Demos"; Flags: ignoreversion
Source: ".\Input\python\win32\Demos\RegCreateKeyTransacted.py"; DestDir: "{app}\win32\Demos"; Flags: ignoreversion
Source: ".\Input\python\win32\Demos\RegRestoreKey.py"; DestDir: "{app}\win32\Demos"; Flags: ignoreversion
Source: ".\Input\python\win32\Demos\SystemParametersInfo.py"; DestDir: "{app}\win32\Demos"; Flags: ignoreversion
Source: ".\Input\python\win32\Demos\timer_demo.py"; DestDir: "{app}\win32\Demos"; Flags: ignoreversion
Source: ".\Input\python\win32\Demos\win32clipboardDemo.py"; DestDir: "{app}\win32\Demos"; Flags: ignoreversion
Source: ".\Input\python\win32\Demos\win32clipboard_bitmapdemo.py"; DestDir: "{app}\win32\Demos"; Flags: ignoreversion
Source: ".\Input\python\win32\Demos\win32comport_demo.py"; DestDir: "{app}\win32\Demos"; Flags: ignoreversion
Source: ".\Input\python\win32\Demos\win32console_demo.py"; DestDir: "{app}\win32\Demos"; Flags: ignoreversion
Source: ".\Input\python\win32\Demos\win32cred_demo.py"; DestDir: "{app}\win32\Demos"; Flags: ignoreversion
Source: ".\Input\python\win32\Demos\win32fileDemo.py"; DestDir: "{app}\win32\Demos"; Flags: ignoreversion
Source: ".\Input\python\win32\Demos\win32gui_demo.py"; DestDir: "{app}\win32\Demos"; Flags: ignoreversion
Source: ".\Input\python\win32\Demos\win32gui_devicenotify.py"; DestDir: "{app}\win32\Demos"; Flags: ignoreversion
Source: ".\Input\python\win32\Demos\win32gui_dialog.py"; DestDir: "{app}\win32\Demos"; Flags: ignoreversion
Source: ".\Input\python\win32\Demos\win32gui_menu.py"; DestDir: "{app}\win32\Demos"; Flags: ignoreversion
Source: ".\Input\python\win32\Demos\win32gui_taskbar.py"; DestDir: "{app}\win32\Demos"; Flags: ignoreversion
Source: ".\Input\python\win32\Demos\win32netdemo.py"; DestDir: "{app}\win32\Demos"; Flags: ignoreversion
Source: ".\Input\python\win32\Demos\win32rcparser_demo.py"; DestDir: "{app}\win32\Demos"; Flags: ignoreversion
Source: ".\Input\python\win32\Demos\win32servicedemo.py"; DestDir: "{app}\win32\Demos"; Flags: ignoreversion
Source: ".\Input\python\win32\Demos\win32ts_logoff_disconnected.py"; DestDir: "{app}\win32\Demos"; Flags: ignoreversion
Source: ".\Input\python\win32\Demos\winprocess.py"; DestDir: "{app}\win32\Demos"; Flags: ignoreversion
Source: ".\Input\python\win32\Demos\c_extension\setup.py"; DestDir: "{app}\win32\Demos\c_extension"; Flags: ignoreversion
Source: ".\Input\python\win32\Demos\dde\ddeclient.py"; DestDir: "{app}\win32\Demos\dde"; Flags: ignoreversion
Source: ".\Input\python\win32\Demos\dde\ddeserver.py"; DestDir: "{app}\win32\Demos\dde"; Flags: ignoreversion
Source: ".\Input\python\win32\Demos\images\frowny.bmp"; DestDir: "{app}\win32\Demos\images"; Flags: ignoreversion
Source: ".\Input\python\win32\Demos\images\smiley.bmp"; DestDir: "{app}\win32\Demos\images"; Flags: ignoreversion
Source: ".\Input\python\win32\Demos\pipes\cat.py"; DestDir: "{app}\win32\Demos\pipes"; Flags: ignoreversion
Source: ".\Input\python\win32\Demos\pipes\runproc.py"; DestDir: "{app}\win32\Demos\pipes"; Flags: ignoreversion
Source: ".\Input\python\win32\Demos\security\account_rights.py"; DestDir: "{app}\win32\Demos\security"; Flags: ignoreversion
Source: ".\Input\python\win32\Demos\security\explicit_entries.py"; DestDir: "{app}\win32\Demos\security"; Flags: ignoreversion
Source: ".\Input\python\win32\Demos\security\GetTokenInformation.py"; DestDir: "{app}\win32\Demos\security"; Flags: ignoreversion
Source: ".\Input\python\win32\Demos\security\get_policy_info.py"; DestDir: "{app}\win32\Demos\security"; Flags: ignoreversion
Source: ".\Input\python\win32\Demos\security\list_rights.py"; DestDir: "{app}\win32\Demos\security"; Flags: ignoreversion
Source: ".\Input\python\win32\Demos\security\localized_names.py"; DestDir: "{app}\win32\Demos\security"; Flags: ignoreversion
Source: ".\Input\python\win32\Demos\security\lsaregevent.py"; DestDir: "{app}\win32\Demos\security"; Flags: ignoreversion
Source: ".\Input\python\win32\Demos\security\lsastore.py"; DestDir: "{app}\win32\Demos\security"; Flags: ignoreversion
Source: ".\Input\python\win32\Demos\security\query_information.py"; DestDir: "{app}\win32\Demos\security"; Flags: ignoreversion
Source: ".\Input\python\win32\Demos\security\regsave_sa.py"; DestDir: "{app}\win32\Demos\security"; Flags: ignoreversion
Source: ".\Input\python\win32\Demos\security\regsecurity.py"; DestDir: "{app}\win32\Demos\security"; Flags: ignoreversion
Source: ".\Input\python\win32\Demos\security\sa_inherit.py"; DestDir: "{app}\win32\Demos\security"; Flags: ignoreversion
Source: ".\Input\python\win32\Demos\security\security_enums.py"; DestDir: "{app}\win32\Demos\security"; Flags: ignoreversion
Source: ".\Input\python\win32\Demos\security\setkernelobjectsecurity.py"; DestDir: "{app}\win32\Demos\security"; Flags: ignoreversion
Source: ".\Input\python\win32\Demos\security\setnamedsecurityinfo.py"; DestDir: "{app}\win32\Demos\security"; Flags: ignoreversion
Source: ".\Input\python\win32\Demos\security\setsecurityinfo.py"; DestDir: "{app}\win32\Demos\security"; Flags: ignoreversion
Source: ".\Input\python\win32\Demos\security\setuserobjectsecurity.py"; DestDir: "{app}\win32\Demos\security"; Flags: ignoreversion
Source: ".\Input\python\win32\Demos\security\set_file_audit.py"; DestDir: "{app}\win32\Demos\security"; Flags: ignoreversion
Source: ".\Input\python\win32\Demos\security\set_file_owner.py"; DestDir: "{app}\win32\Demos\security"; Flags: ignoreversion
Source: ".\Input\python\win32\Demos\security\set_policy_info.py"; DestDir: "{app}\win32\Demos\security"; Flags: ignoreversion
Source: ".\Input\python\win32\Demos\security\sspi\fetch_url.py"; DestDir: "{app}\win32\Demos\security\sspi"; Flags: ignoreversion
Source: ".\Input\python\win32\Demos\security\sspi\simple_auth.py"; DestDir: "{app}\win32\Demos\security\sspi"; Flags: ignoreversion
Source: ".\Input\python\win32\Demos\security\sspi\socket_server.py"; DestDir: "{app}\win32\Demos\security\sspi"; Flags: ignoreversion
Source: ".\Input\python\win32\Demos\security\sspi\validate_password.py"; DestDir: "{app}\win32\Demos\security\sspi"; Flags: ignoreversion
Source: ".\Input\python\win32\Demos\service\nativePipeTestService.py"; DestDir: "{app}\win32\Demos\service"; Flags: ignoreversion
Source: ".\Input\python\win32\Demos\service\pipeTestService.py"; DestDir: "{app}\win32\Demos\service"; Flags: ignoreversion
Source: ".\Input\python\win32\Demos\service\pipeTestServiceClient.py"; DestDir: "{app}\win32\Demos\service"; Flags: ignoreversion
Source: ".\Input\python\win32\Demos\service\serviceEvents.py"; DestDir: "{app}\win32\Demos\service"; Flags: ignoreversion
Source: ".\Input\python\win32\Demos\win32wnet\testwnet.py"; DestDir: "{app}\win32\Demos\win32wnet"; Flags: ignoreversion
Source: ".\Input\python\win32\Demos\win32wnet\winnetwk.py"; DestDir: "{app}\win32\Demos\win32wnet"; Flags: ignoreversion
Source: ".\Input\python\win32\include\PyWinTypes.h"; DestDir: "{app}\win32\include"; Flags: ignoreversion
Source: ".\Input\python\win32\lib\afxres.py"; DestDir: "{app}\win32\lib"; Flags: ignoreversion
Source: ".\Input\python\win32\lib\commctrl.py"; DestDir: "{app}\win32\lib"; Flags: ignoreversion
Source: ".\Input\python\win32\lib\dbi.py"; DestDir: "{app}\win32\lib"; Flags: ignoreversion
Source: ".\Input\python\win32\lib\mmsystem.py"; DestDir: "{app}\win32\lib"; Flags: ignoreversion
Source: ".\Input\python\win32\lib\netbios.py"; DestDir: "{app}\win32\lib"; Flags: ignoreversion
Source: ".\Input\python\win32\lib\ntsecuritycon.py"; DestDir: "{app}\win32\lib"; Flags: ignoreversion
Source: ".\Input\python\win32\lib\pywin32_testutil.py"; DestDir: "{app}\win32\lib"; Flags: ignoreversion
Source: ".\Input\python\win32\lib\pywintypes.py"; DestDir: "{app}\win32\lib"; Flags: ignoreversion
Source: ".\Input\python\win32\lib\rasutil.py"; DestDir: "{app}\win32\lib"; Flags: ignoreversion
Source: ".\Input\python\win32\lib\regcheck.py"; DestDir: "{app}\win32\lib"; Flags: ignoreversion
Source: ".\Input\python\win32\lib\regutil.py"; DestDir: "{app}\win32\lib"; Flags: ignoreversion
Source: ".\Input\python\win32\lib\sspi.py"; DestDir: "{app}\win32\lib"; Flags: ignoreversion
Source: ".\Input\python\win32\lib\sspicon.py"; DestDir: "{app}\win32\lib"; Flags: ignoreversion
Source: ".\Input\python\win32\lib\win32con.py"; DestDir: "{app}\win32\lib"; Flags: ignoreversion
Source: ".\Input\python\win32\lib\win32cryptcon.py"; DestDir: "{app}\win32\lib"; Flags: ignoreversion
Source: ".\Input\python\win32\lib\win32evtlogutil.py"; DestDir: "{app}\win32\lib"; Flags: ignoreversion
Source: ".\Input\python\win32\lib\win32gui_struct.py"; DestDir: "{app}\win32\lib"; Flags: ignoreversion
Source: ".\Input\python\win32\lib\win32inetcon.py"; DestDir: "{app}\win32\lib"; Flags: ignoreversion
Source: ".\Input\python\win32\lib\win32netcon.py"; DestDir: "{app}\win32\lib"; Flags: ignoreversion
Source: ".\Input\python\win32\lib\win32pdhquery.py"; DestDir: "{app}\win32\lib"; Flags: ignoreversion
Source: ".\Input\python\win32\lib\win32pdhutil.py"; DestDir: "{app}\win32\lib"; Flags: ignoreversion
Source: ".\Input\python\win32\lib\win32rcparser.py"; DestDir: "{app}\win32\lib"; Flags: ignoreversion
Source: ".\Input\python\win32\lib\win32serviceutil.py"; DestDir: "{app}\win32\lib"; Flags: ignoreversion
Source: ".\Input\python\win32\lib\win32timezone.py"; DestDir: "{app}\win32\lib"; Flags: ignoreversion
Source: ".\Input\python\win32\lib\win32traceutil.py"; DestDir: "{app}\win32\lib"; Flags: ignoreversion
Source: ".\Input\python\win32\lib\win32verstamp.py"; DestDir: "{app}\win32\lib"; Flags: ignoreversion
Source: ".\Input\python\win32\lib\winerror.py"; DestDir: "{app}\win32\lib"; Flags: ignoreversion
Source: ".\Input\python\win32\lib\winioctlcon.py"; DestDir: "{app}\win32\lib"; Flags: ignoreversion
Source: ".\Input\python\win32\lib\winnt.py"; DestDir: "{app}\win32\lib"; Flags: ignoreversion
Source: ".\Input\python\win32\lib\winperf.py"; DestDir: "{app}\win32\lib"; Flags: ignoreversion
Source: ".\Input\python\win32\lib\winxptheme.py"; DestDir: "{app}\win32\lib"; Flags: ignoreversion
Source: ".\Input\python\win32\libs\pywintypes.lib"; DestDir: "{app}\win32\libs"; Flags: ignoreversion
Source: ".\Input\python\win32\scripts\backupEventLog.py"; DestDir: "{app}\win32\scripts"; Flags: ignoreversion
Source: ".\Input\python\win32\scripts\ControlService.py"; DestDir: "{app}\win32\scripts"; Flags: ignoreversion
Source: ".\Input\python\win32\scripts\killProcName.py"; DestDir: "{app}\win32\scripts"; Flags: ignoreversion
Source: ".\Input\python\win32\scripts\rasutil.py"; DestDir: "{app}\win32\scripts"; Flags: ignoreversion
Source: ".\Input\python\win32\scripts\regsetup.py"; DestDir: "{app}\win32\scripts"; Flags: ignoreversion
Source: ".\Input\python\win32\scripts\setup_d.py"; DestDir: "{app}\win32\scripts"; Flags: ignoreversion
Source: ".\Input\python\win32\scripts\ce\pysynch.py"; DestDir: "{app}\win32\scripts\ce"; Flags: ignoreversion
Source: ".\Input\python\win32\scripts\VersionStamp\BrandProject.py"; DestDir: "{app}\win32\scripts\VersionStamp"; Flags: ignoreversion
Source: ".\Input\python\win32\scripts\VersionStamp\bulkstamp.py"; DestDir: "{app}\win32\scripts\VersionStamp"; Flags: ignoreversion
Source: ".\Input\python\win32\scripts\VersionStamp\vssutil.py"; DestDir: "{app}\win32\scripts\VersionStamp"; Flags: ignoreversion
Source: ".\Input\python\win32\test\handles.py"; DestDir: "{app}\win32\test"; Flags: ignoreversion
Source: ".\Input\python\win32\test\testall.py"; DestDir: "{app}\win32\test"; Flags: ignoreversion
Source: ".\Input\python\win32\test\test_clipboard.py"; DestDir: "{app}\win32\test"; Flags: ignoreversion
Source: ".\Input\python\win32\test\test_exceptions.py"; DestDir: "{app}\win32\test"; Flags: ignoreversion
Source: ".\Input\python\win32\test\test_odbc.py"; DestDir: "{app}\win32\test"; Flags: ignoreversion
Source: ".\Input\python\win32\test\test_pywintypes.py"; DestDir: "{app}\win32\test"; Flags: ignoreversion
Source: ".\Input\python\win32\test\test_security.py"; DestDir: "{app}\win32\test"; Flags: ignoreversion
Source: ".\Input\python\win32\test\test_sspi.py"; DestDir: "{app}\win32\test"; Flags: ignoreversion
Source: ".\Input\python\win32\test\test_win32api.py"; DestDir: "{app}\win32\test"; Flags: ignoreversion
Source: ".\Input\python\win32\test\test_win32crypt.py"; DestDir: "{app}\win32\test"; Flags: ignoreversion
Source: ".\Input\python\win32\test\test_win32event.py"; DestDir: "{app}\win32\test"; Flags: ignoreversion
Source: ".\Input\python\win32\test\test_win32file.py"; DestDir: "{app}\win32\test"; Flags: ignoreversion
Source: ".\Input\python\win32\test\test_win32gui.py"; DestDir: "{app}\win32\test"; Flags: ignoreversion
Source: ".\Input\python\win32\test\test_win32guistruct.py"; DestDir: "{app}\win32\test"; Flags: ignoreversion
Source: ".\Input\python\win32\test\test_win32inet.py"; DestDir: "{app}\win32\test"; Flags: ignoreversion
Source: ".\Input\python\win32\test\test_win32net.py"; DestDir: "{app}\win32\test"; Flags: ignoreversion
Source: ".\Input\python\win32\test\test_win32pipe.py"; DestDir: "{app}\win32\test"; Flags: ignoreversion
Source: ".\Input\python\win32\test\test_win32rcparser.py"; DestDir: "{app}\win32\test"; Flags: ignoreversion
Source: ".\Input\python\win32\test\test_win32timezone.py"; DestDir: "{app}\win32\test"; Flags: ignoreversion
Source: ".\Input\python\win32\test\test_win32trace.py"; DestDir: "{app}\win32\test"; Flags: ignoreversion
Source: ".\Input\python\win32\test\test_win32wnet.py"; DestDir: "{app}\win32\test"; Flags: ignoreversion
Source: ".\Input\python\win32\test\win32rcparser\python.bmp"; DestDir: "{app}\win32\test\win32rcparser"; Flags: ignoreversion
Source: ".\Input\python\win32\test\win32rcparser\python.ico"; DestDir: "{app}\win32\test\win32rcparser"; Flags: ignoreversion
Source: ".\Input\python\win32\test\win32rcparser\test.h"; DestDir: "{app}\win32\test\win32rcparser"; Flags: ignoreversion
Source: ".\Input\python\win32\test\win32rcparser\test.rc"; DestDir: "{app}\win32\test\win32rcparser"; Flags: ignoreversion
Source: ".\Input\python\win32com\License.txt"; DestDir: "{app}\win32com"; Flags: ignoreversion
Source: ".\Input\python\win32com\olectl.py"; DestDir: "{app}\win32com"; Flags: ignoreversion
Source: ".\Input\python\win32com\readme.htm"; DestDir: "{app}\win32com"; Flags: ignoreversion
Source: ".\Input\python\win32com\storagecon.py"; DestDir: "{app}\win32com"; Flags: ignoreversion
Source: ".\Input\python\win32com\universal.py"; DestDir: "{app}\win32com"; Flags: ignoreversion
Source: ".\Input\python\win32com\util.py"; DestDir: "{app}\win32com"; Flags: ignoreversion
Source: ".\Input\python\win32com\__init__.py"; DestDir: "{app}\win32com"; Flags: ignoreversion
Source: ".\Input\python\win32com\client\build.py"; DestDir: "{app}\win32com\client"; Flags: ignoreversion
Source: ".\Input\python\win32com\client\CLSIDToClass.py"; DestDir: "{app}\win32com\client"; Flags: ignoreversion
Source: ".\Input\python\win32com\client\combrowse.py"; DestDir: "{app}\win32com\client"; Flags: ignoreversion
Source: ".\Input\python\win32com\client\connect.py"; DestDir: "{app}\win32com\client"; Flags: ignoreversion
Source: ".\Input\python\win32com\client\dynamic.py"; DestDir: "{app}\win32com\client"; Flags: ignoreversion
Source: ".\Input\python\win32com\client\gencache.py"; DestDir: "{app}\win32com\client"; Flags: ignoreversion
Source: ".\Input\python\win32com\client\genpy.py"; DestDir: "{app}\win32com\client"; Flags: ignoreversion
Source: ".\Input\python\win32com\client\makepy.py"; DestDir: "{app}\win32com\client"; Flags: ignoreversion
Source: ".\Input\python\win32com\client\selecttlb.py"; DestDir: "{app}\win32com\client"; Flags: ignoreversion
Source: ".\Input\python\win32com\client\tlbrowse.py"; DestDir: "{app}\win32com\client"; Flags: ignoreversion
Source: ".\Input\python\win32com\client\util.py"; DestDir: "{app}\win32com\client"; Flags: ignoreversion
Source: ".\Input\python\win32com\client\__init__.py"; DestDir: "{app}\win32com\client"; Flags: ignoreversion
Source: ".\Input\python\win32com\demos\connect.py"; DestDir: "{app}\win32com\demos"; Flags: ignoreversion
Source: ".\Input\python\win32com\demos\dump_clipboard.py"; DestDir: "{app}\win32com\demos"; Flags: ignoreversion
Source: ".\Input\python\win32com\demos\eventsApartmentThreaded.py"; DestDir: "{app}\win32com\demos"; Flags: ignoreversion
Source: ".\Input\python\win32com\demos\eventsFreeThreaded.py"; DestDir: "{app}\win32com\demos"; Flags: ignoreversion
Source: ".\Input\python\win32com\demos\excelAddin.py"; DestDir: "{app}\win32com\demos"; Flags: ignoreversion
Source: ".\Input\python\win32com\demos\excelRTDServer.py"; DestDir: "{app}\win32com\demos"; Flags: ignoreversion
Source: ".\Input\python\win32com\demos\iebutton.py"; DestDir: "{app}\win32com\demos"; Flags: ignoreversion
Source: ".\Input\python\win32com\demos\ietoolbar.py"; DestDir: "{app}\win32com\demos"; Flags: ignoreversion
Source: ".\Input\python\win32com\demos\outlookAddin.py"; DestDir: "{app}\win32com\demos"; Flags: ignoreversion
Source: ".\Input\python\win32com\demos\trybag.py"; DestDir: "{app}\win32com\demos"; Flags: ignoreversion
Source: ".\Input\python\win32com\demos\__init__.py"; DestDir: "{app}\win32com\demos"; Flags: ignoreversion
Source: ".\Input\python\win32com\gen_py\dicts.dat"; DestDir: "{app}\win32com\gen_py"; Flags: ignoreversion
Source: ".\Input\python\win32com\gen_py\__init__.py"; DestDir: "{app}\win32com\gen_py"; Flags: ignoreversion
Source: ".\Input\python\win32com\HTML\docindex.html"; DestDir: "{app}\win32com\HTML"; Flags: ignoreversion
Source: ".\Input\python\win32com\HTML\GeneratedSupport.html"; DestDir: "{app}\win32com\HTML"; Flags: ignoreversion
Source: ".\Input\python\win32com\HTML\index.html"; DestDir: "{app}\win32com\HTML"; Flags: ignoreversion
Source: ".\Input\python\win32com\HTML\misc.html"; DestDir: "{app}\win32com\HTML"; Flags: ignoreversion
Source: ".\Input\python\win32com\HTML\package.html"; DestDir: "{app}\win32com\HTML"; Flags: ignoreversion
Source: ".\Input\python\win32com\HTML\PythonCOM.html"; DestDir: "{app}\win32com\HTML"; Flags: ignoreversion
Source: ".\Input\python\win32com\HTML\QuickStartClientCom.html"; DestDir: "{app}\win32com\HTML"; Flags: ignoreversion
Source: ".\Input\python\win32com\HTML\QuickStartServerCom.html"; DestDir: "{app}\win32com\HTML"; Flags: ignoreversion
Source: ".\Input\python\win32com\HTML\variant.html"; DestDir: "{app}\win32com\HTML"; Flags: ignoreversion
Source: ".\Input\python\win32com\HTML\image\blank.gif"; DestDir: "{app}\win32com\HTML\image"; Flags: ignoreversion
Source: ".\Input\python\win32com\HTML\image\BTN_HomePage.gif"; DestDir: "{app}\win32com\HTML\image"; Flags: ignoreversion
Source: ".\Input\python\win32com\HTML\image\BTN_ManualTop.gif"; DestDir: "{app}\win32com\HTML\image"; Flags: ignoreversion
Source: ".\Input\python\win32com\HTML\image\BTN_NextPage.gif"; DestDir: "{app}\win32com\HTML\image"; Flags: ignoreversion
Source: ".\Input\python\win32com\HTML\image\BTN_PrevPage.gif"; DestDir: "{app}\win32com\HTML\image"; Flags: ignoreversion
Source: ".\Input\python\win32com\HTML\image\pycom_blowing.gif"; DestDir: "{app}\win32com\HTML\image"; Flags: ignoreversion
Source: ".\Input\python\win32com\HTML\image\pythoncom.gif"; DestDir: "{app}\win32com\HTML\image"; Flags: ignoreversion
Source: ".\Input\python\win32com\HTML\image\www_icon.gif"; DestDir: "{app}\win32com\HTML\image"; Flags: ignoreversion
Source: ".\Input\python\win32com\include\PythonCOM.h"; DestDir: "{app}\win32com\include"; Flags: ignoreversion
Source: ".\Input\python\win32com\include\PythonCOMRegister.h"; DestDir: "{app}\win32com\include"; Flags: ignoreversion
Source: ".\Input\python\win32com\include\PythonCOMServer.h"; DestDir: "{app}\win32com\include"; Flags: ignoreversion
Source: ".\Input\python\win32com\libs\axscript.lib"; DestDir: "{app}\win32com\libs"; Flags: ignoreversion
Source: ".\Input\python\win32com\libs\pythoncom.lib"; DestDir: "{app}\win32com\libs"; Flags: ignoreversion
Source: ".\Input\python\win32com\makegw\makegw.py"; DestDir: "{app}\win32com\makegw"; Flags: ignoreversion
Source: ".\Input\python\win32com\makegw\makegwenum.py"; DestDir: "{app}\win32com\makegw"; Flags: ignoreversion
Source: ".\Input\python\win32com\makegw\makegwparse.py"; DestDir: "{app}\win32com\makegw"; Flags: ignoreversion
Source: ".\Input\python\win32com\makegw\__init__.py"; DestDir: "{app}\win32com\makegw"; Flags: ignoreversion
Source: ".\Input\python\win32com\server\connect.py"; DestDir: "{app}\win32com\server"; Flags: ignoreversion
Source: ".\Input\python\win32com\server\dispatcher.py"; DestDir: "{app}\win32com\server"; Flags: ignoreversion
Source: ".\Input\python\win32com\server\exception.py"; DestDir: "{app}\win32com\server"; Flags: ignoreversion
Source: ".\Input\python\win32com\server\factory.py"; DestDir: "{app}\win32com\server"; Flags: ignoreversion
Source: ".\Input\python\win32com\server\localserver.py"; DestDir: "{app}\win32com\server"; Flags: ignoreversion
Source: ".\Input\python\win32com\server\policy.py"; DestDir: "{app}\win32com\server"; Flags: ignoreversion
Source: ".\Input\python\win32com\server\register.py"; DestDir: "{app}\win32com\server"; Flags: ignoreversion
Source: ".\Input\python\win32com\server\util.py"; DestDir: "{app}\win32com\server"; Flags: ignoreversion
Source: ".\Input\python\win32com\server\__init__.py"; DestDir: "{app}\win32com\server"; Flags: ignoreversion
Source: ".\Input\python\win32com\servers\dictionary.py"; DestDir: "{app}\win32com\servers"; Flags: ignoreversion
Source: ".\Input\python\win32com\servers\interp.py"; DestDir: "{app}\win32com\servers"; Flags: ignoreversion
Source: ".\Input\python\win32com\servers\perfmon.py"; DestDir: "{app}\win32com\servers"; Flags: ignoreversion
Source: ".\Input\python\win32com\servers\PythonTools.py"; DestDir: "{app}\win32com\servers"; Flags: ignoreversion
Source: ".\Input\python\win32com\servers\test_pycomtest.py"; DestDir: "{app}\win32com\servers"; Flags: ignoreversion
Source: ".\Input\python\win32com\servers\__init__.py"; DestDir: "{app}\win32com\servers"; Flags: ignoreversion
Source: ".\Input\python\win32com\test\daodump.py"; DestDir: "{app}\win32com\test"; Flags: ignoreversion
Source: ".\Input\python\win32com\test\errorSemantics.py"; DestDir: "{app}\win32com\test"; Flags: ignoreversion
Source: ".\Input\python\win32com\test\GenTestScripts.py"; DestDir: "{app}\win32com\test"; Flags: ignoreversion
Source: ".\Input\python\win32com\test\pippo.idl"; DestDir: "{app}\win32com\test"; Flags: ignoreversion
Source: ".\Input\python\win32com\test\pippo_server.py"; DestDir: "{app}\win32com\test"; Flags: ignoreversion
Source: ".\Input\python\win32com\test\policySemantics.py"; DestDir: "{app}\win32com\test"; Flags: ignoreversion
Source: ".\Input\python\win32com\test\readme.txt"; DestDir: "{app}\win32com\test"; Flags: ignoreversion
Source: ".\Input\python\win32com\test\testAccess.py"; DestDir: "{app}\win32com\test"; Flags: ignoreversion
Source: ".\Input\python\win32com\test\testADOEvents.py"; DestDir: "{app}\win32com\test"; Flags: ignoreversion
Source: ".\Input\python\win32com\test\testall.py"; DestDir: "{app}\win32com\test"; Flags: ignoreversion
Source: ".\Input\python\win32com\test\testArrays.py"; DestDir: "{app}\win32com\test"; Flags: ignoreversion
Source: ".\Input\python\win32com\test\testAXScript.py"; DestDir: "{app}\win32com\test"; Flags: ignoreversion
Source: ".\Input\python\win32com\test\testClipboard.py"; DestDir: "{app}\win32com\test"; Flags: ignoreversion
Source: ".\Input\python\win32com\test\testCollections.py"; DestDir: "{app}\win32com\test"; Flags: ignoreversion
Source: ".\Input\python\win32com\test\testDCOM.py"; DestDir: "{app}\win32com\test"; Flags: ignoreversion
Source: ".\Input\python\win32com\test\testDictionary.py"; DestDir: "{app}\win32com\test"; Flags: ignoreversion
Source: ".\Input\python\win32com\test\testDictionary.vbs"; DestDir: "{app}\win32com\test"; Flags: ignoreversion
Source: ".\Input\python\win32com\test\testDynamic.py"; DestDir: "{app}\win32com\test"; Flags: ignoreversion
Source: ".\Input\python\win32com\test\testExchange.py"; DestDir: "{app}\win32com\test"; Flags: ignoreversion
Source: ".\Input\python\win32com\test\testExplorer.py"; DestDir: "{app}\win32com\test"; Flags: ignoreversion
Source: ".\Input\python\win32com\test\testGatewayAddresses.py"; DestDir: "{app}\win32com\test"; Flags: ignoreversion
Source: ".\Input\python\win32com\test\testGIT.py"; DestDir: "{app}\win32com\test"; Flags: ignoreversion
Source: ".\Input\python\win32com\test\testInterp.vbs"; DestDir: "{app}\win32com\test"; Flags: ignoreversion
Source: ".\Input\python\win32com\test\testIterators.py"; DestDir: "{app}\win32com\test"; Flags: ignoreversion
Source: ".\Input\python\win32com\test\testmakepy.py"; DestDir: "{app}\win32com\test"; Flags: ignoreversion
Source: ".\Input\python\win32com\test\testMarshal.py"; DestDir: "{app}\win32com\test"; Flags: ignoreversion
Source: ".\Input\python\win32com\test\testMSOffice.py"; DestDir: "{app}\win32com\test"; Flags: ignoreversion
Source: ".\Input\python\win32com\test\testMSOfficeEvents.py"; DestDir: "{app}\win32com\test"; Flags: ignoreversion
Source: ".\Input\python\win32com\test\testNetscape.py"; DestDir: "{app}\win32com\test"; Flags: ignoreversion
Source: ".\Input\python\win32com\test\testPersist.py"; DestDir: "{app}\win32com\test"; Flags: ignoreversion
Source: ".\Input\python\win32com\test\testPippo.py"; DestDir: "{app}\win32com\test"; Flags: ignoreversion
Source: ".\Input\python\win32com\test\testPyComTest.py"; DestDir: "{app}\win32com\test"; Flags: ignoreversion
Source: ".\Input\python\win32com\test\Testpys.sct"; DestDir: "{app}\win32com\test"; Flags: ignoreversion
Source: ".\Input\python\win32com\test\testPyScriptlet.js"; DestDir: "{app}\win32com\test"; Flags: ignoreversion
Source: ".\Input\python\win32com\test\testROT.py"; DestDir: "{app}\win32com\test"; Flags: ignoreversion
Source: ".\Input\python\win32com\test\testServers.py"; DestDir: "{app}\win32com\test"; Flags: ignoreversion
Source: ".\Input\python\win32com\test\testShell.py"; DestDir: "{app}\win32com\test"; Flags: ignoreversion
Source: ".\Input\python\win32com\test\testStorage.py"; DestDir: "{app}\win32com\test"; Flags: ignoreversion
Source: ".\Input\python\win32com\test\testStreams.py"; DestDir: "{app}\win32com\test"; Flags: ignoreversion
Source: ".\Input\python\win32com\test\testvb.py"; DestDir: "{app}\win32com\test"; Flags: ignoreversion
Source: ".\Input\python\win32com\test\testvbscript_regexp.py"; DestDir: "{app}\win32com\test"; Flags: ignoreversion
Source: ".\Input\python\win32com\test\testWMI.py"; DestDir: "{app}\win32com\test"; Flags: ignoreversion
Source: ".\Input\python\win32com\test\testxslt.js"; DestDir: "{app}\win32com\test"; Flags: ignoreversion
Source: ".\Input\python\win32com\test\testxslt.py"; DestDir: "{app}\win32com\test"; Flags: ignoreversion
Source: ".\Input\python\win32com\test\testxslt.xsl"; DestDir: "{app}\win32com\test"; Flags: ignoreversion
Source: ".\Input\python\win32com\test\util.py"; DestDir: "{app}\win32com\test"; Flags: ignoreversion
Source: ".\Input\python\win32com\test\__init__.py"; DestDir: "{app}\win32com\test"; Flags: ignoreversion
Source: ".\Input\python\win32comext\adsi\adsi.pyd"; DestDir: "{app}\win32comext\adsi"; Flags: ignoreversion
Source: ".\Input\python\win32comext\adsi\adsicon.py"; DestDir: "{app}\win32comext\adsi"; Flags: ignoreversion
Source: ".\Input\python\win32comext\adsi\__init__.py"; DestDir: "{app}\win32comext\adsi"; Flags: ignoreversion
Source: ".\Input\python\win32comext\adsi\demos\objectPicker.py"; DestDir: "{app}\win32comext\adsi\demos"; Flags: ignoreversion
Source: ".\Input\python\win32comext\adsi\demos\scp.py"; DestDir: "{app}\win32comext\adsi\demos"; Flags: ignoreversion
Source: ".\Input\python\win32comext\adsi\demos\search.py"; DestDir: "{app}\win32comext\adsi\demos"; Flags: ignoreversion
Source: ".\Input\python\win32comext\adsi\demos\test.py"; DestDir: "{app}\win32comext\adsi\demos"; Flags: ignoreversion
Source: ".\Input\python\win32comext\authorization\authorization.pyd"; DestDir: "{app}\win32comext\authorization"; Flags: ignoreversion
Source: ".\Input\python\win32comext\authorization\__init__.py"; DestDir: "{app}\win32comext\authorization"; Flags: ignoreversion
Source: ".\Input\python\win32comext\authorization\demos\EditSecurity.py"; DestDir: "{app}\win32comext\authorization\demos"; Flags: ignoreversion
Source: ".\Input\python\win32comext\authorization\demos\EditServiceSecurity.py"; DestDir: "{app}\win32comext\authorization\demos"; Flags: ignoreversion
Source: ".\Input\python\win32comext\axcontrol\axcontrol.pyd"; DestDir: "{app}\win32comext\axcontrol"; Flags: ignoreversion
Source: ".\Input\python\win32comext\axcontrol\__init__.py"; DestDir: "{app}\win32comext\axcontrol"; Flags: ignoreversion
Source: ".\Input\python\win32comext\axdebug\adb.py"; DestDir: "{app}\win32comext\axdebug"; Flags: ignoreversion
Source: ".\Input\python\win32comext\axdebug\axdebug.pyd"; DestDir: "{app}\win32comext\axdebug"; Flags: ignoreversion
Source: ".\Input\python\win32comext\axdebug\codecontainer.py"; DestDir: "{app}\win32comext\axdebug"; Flags: ignoreversion
Source: ".\Input\python\win32comext\axdebug\contexts.py"; DestDir: "{app}\win32comext\axdebug"; Flags: ignoreversion
Source: ".\Input\python\win32comext\axdebug\debugger.py"; DestDir: "{app}\win32comext\axdebug"; Flags: ignoreversion
Source: ".\Input\python\win32comext\axdebug\documents.py"; DestDir: "{app}\win32comext\axdebug"; Flags: ignoreversion
Source: ".\Input\python\win32comext\axdebug\dump.py"; DestDir: "{app}\win32comext\axdebug"; Flags: ignoreversion
Source: ".\Input\python\win32comext\axdebug\expressions.py"; DestDir: "{app}\win32comext\axdebug"; Flags: ignoreversion
Source: ".\Input\python\win32comext\axdebug\gateways.py"; DestDir: "{app}\win32comext\axdebug"; Flags: ignoreversion
Source: ".\Input\python\win32comext\axdebug\stackframe.py"; DestDir: "{app}\win32comext\axdebug"; Flags: ignoreversion
Source: ".\Input\python\win32comext\axdebug\util.py"; DestDir: "{app}\win32comext\axdebug"; Flags: ignoreversion
Source: ".\Input\python\win32comext\axdebug\__init__.py"; DestDir: "{app}\win32comext\axdebug"; Flags: ignoreversion
Source: ".\Input\python\win32comext\axscript\asputil.py"; DestDir: "{app}\win32comext\axscript"; Flags: ignoreversion
Source: ".\Input\python\win32comext\axscript\axscript.pyd"; DestDir: "{app}\win32comext\axscript"; Flags: ignoreversion
Source: ".\Input\python\win32comext\axscript\__init__.py"; DestDir: "{app}\win32comext\axscript"; Flags: ignoreversion
Source: ".\Input\python\win32comext\axscript\client\debug.py"; DestDir: "{app}\win32comext\axscript\client"; Flags: ignoreversion
Source: ".\Input\python\win32comext\axscript\client\error.py"; DestDir: "{app}\win32comext\axscript\client"; Flags: ignoreversion
Source: ".\Input\python\win32comext\axscript\client\framework.py"; DestDir: "{app}\win32comext\axscript\client"; Flags: ignoreversion
Source: ".\Input\python\win32comext\axscript\client\pydumper.py"; DestDir: "{app}\win32comext\axscript\client"; Flags: ignoreversion
Source: ".\Input\python\win32comext\axscript\client\pyscript.py"; DestDir: "{app}\win32comext\axscript\client"; Flags: ignoreversion
Source: ".\Input\python\win32comext\axscript\client\pyscript_rexec.py"; DestDir: "{app}\win32comext\axscript\client"; Flags: ignoreversion
Source: ".\Input\python\win32comext\axscript\client\scriptdispatch.py"; DestDir: "{app}\win32comext\axscript\client"; Flags: ignoreversion
Source: ".\Input\python\win32comext\axscript\client\__init__.py"; DestDir: "{app}\win32comext\axscript\client"; Flags: ignoreversion
Source: ".\Input\python\win32comext\axscript\Demos\client\asp\caps.asp"; DestDir: "{app}\win32comext\axscript\Demos\client\asp"; Flags: ignoreversion
Source: ".\Input\python\win32comext\axscript\Demos\client\asp\CreateObject.asp"; DestDir: "{app}\win32comext\axscript\Demos\client\asp"; Flags: ignoreversion
Source: ".\Input\python\win32comext\axscript\Demos\client\asp\tut1.asp"; DestDir: "{app}\win32comext\axscript\Demos\client\asp"; Flags: ignoreversion
Source: ".\Input\python\win32comext\axscript\Demos\client\asp\interrupt\test.asp"; DestDir: "{app}\win32comext\axscript\Demos\client\asp\interrupt"; Flags: ignoreversion
Source: ".\Input\python\win32comext\axscript\Demos\client\asp\interrupt\test.html"; DestDir: "{app}\win32comext\axscript\Demos\client\asp\interrupt"; Flags: ignoreversion
Source: ".\Input\python\win32comext\axscript\Demos\client\asp\interrupt\test1.asp"; DestDir: "{app}\win32comext\axscript\Demos\client\asp\interrupt"; Flags: ignoreversion
Source: ".\Input\python\win32comext\axscript\Demos\client\asp\interrupt\test1.html"; DestDir: "{app}\win32comext\axscript\Demos\client\asp\interrupt"; Flags: ignoreversion
Source: ".\Input\python\win32comext\axscript\Demos\client\ie\calc.htm"; DestDir: "{app}\win32comext\axscript\Demos\client\ie"; Flags: ignoreversion
Source: ".\Input\python\win32comext\axscript\Demos\client\ie\dbgtest.htm"; DestDir: "{app}\win32comext\axscript\Demos\client\ie"; Flags: ignoreversion
Source: ".\Input\python\win32comext\axscript\Demos\client\ie\demo.htm"; DestDir: "{app}\win32comext\axscript\Demos\client\ie"; Flags: ignoreversion
Source: ".\Input\python\win32comext\axscript\Demos\client\ie\demo_check.htm"; DestDir: "{app}\win32comext\axscript\Demos\client\ie"; Flags: ignoreversion
Source: ".\Input\python\win32comext\axscript\Demos\client\ie\demo_intro.htm"; DestDir: "{app}\win32comext\axscript\Demos\client\ie"; Flags: ignoreversion
Source: ".\Input\python\win32comext\axscript\Demos\client\ie\demo_menu.htm"; DestDir: "{app}\win32comext\axscript\Demos\client\ie"; Flags: ignoreversion
Source: ".\Input\python\win32comext\axscript\Demos\client\ie\docwrite.htm"; DestDir: "{app}\win32comext\axscript\Demos\client\ie"; Flags: ignoreversion
Source: ".\Input\python\win32comext\axscript\Demos\client\ie\foo2.htm"; DestDir: "{app}\win32comext\axscript\Demos\client\ie"; Flags: ignoreversion
Source: ".\Input\python\win32comext\axscript\Demos\client\ie\form.htm"; DestDir: "{app}\win32comext\axscript\Demos\client\ie"; Flags: ignoreversion
Source: ".\Input\python\win32comext\axscript\Demos\client\ie\marqueeDemo.htm"; DestDir: "{app}\win32comext\axscript\Demos\client\ie"; Flags: ignoreversion
Source: ".\Input\python\win32comext\axscript\Demos\client\ie\MarqueeText1.htm"; DestDir: "{app}\win32comext\axscript\Demos\client\ie"; Flags: ignoreversion
Source: ".\Input\python\win32comext\axscript\Demos\client\ie\mousetrack.htm"; DestDir: "{app}\win32comext\axscript\Demos\client\ie"; Flags: ignoreversion
Source: ".\Input\python\win32comext\axscript\Demos\client\ie\pycom_blowing.gif"; DestDir: "{app}\win32comext\axscript\Demos\client\ie"; Flags: ignoreversion
Source: ".\Input\python\win32comext\axscript\Demos\client\wsh\blank.pys"; DestDir: "{app}\win32comext\axscript\Demos\client\wsh"; Flags: ignoreversion
Source: ".\Input\python\win32comext\axscript\Demos\client\wsh\excel.pys"; DestDir: "{app}\win32comext\axscript\Demos\client\wsh"; Flags: ignoreversion
Source: ".\Input\python\win32comext\axscript\Demos\client\wsh\registry.pys"; DestDir: "{app}\win32comext\axscript\Demos\client\wsh"; Flags: ignoreversion
Source: ".\Input\python\win32comext\axscript\Demos\client\wsh\test.pys"; DestDir: "{app}\win32comext\axscript\Demos\client\wsh"; Flags: ignoreversion
Source: ".\Input\python\win32comext\axscript\server\axsite.py"; DestDir: "{app}\win32comext\axscript\server"; Flags: ignoreversion
Source: ".\Input\python\win32comext\axscript\server\error.py"; DestDir: "{app}\win32comext\axscript\server"; Flags: ignoreversion
Source: ".\Input\python\win32comext\axscript\server\__init__.py"; DestDir: "{app}\win32comext\axscript\server"; Flags: ignoreversion
Source: ".\Input\python\win32comext\axscript\test\debugTest.pys"; DestDir: "{app}\win32comext\axscript\test"; Flags: ignoreversion
Source: ".\Input\python\win32comext\axscript\test\debugTest.vbs"; DestDir: "{app}\win32comext\axscript\test"; Flags: ignoreversion
Source: ".\Input\python\win32comext\axscript\test\leakTest.py"; DestDir: "{app}\win32comext\axscript\test"; Flags: ignoreversion
Source: ".\Input\python\win32comext\axscript\test\test.html"; DestDir: "{app}\win32comext\axscript\test"; Flags: ignoreversion
Source: ".\Input\python\win32comext\axscript\test\testHost.py"; DestDir: "{app}\win32comext\axscript\test"; Flags: ignoreversion
Source: ".\Input\python\win32comext\axscript\test\testHost4Dbg.py"; DestDir: "{app}\win32comext\axscript\test"; Flags: ignoreversion
Source: ".\Input\python\win32comext\bits\bits.pyd"; DestDir: "{app}\win32comext\bits"; Flags: ignoreversion
Source: ".\Input\python\win32comext\bits\__init__.py"; DestDir: "{app}\win32comext\bits"; Flags: ignoreversion
Source: ".\Input\python\win32comext\bits\test\show_all_jobs.py"; DestDir: "{app}\win32comext\bits\test"; Flags: ignoreversion
Source: ".\Input\python\win32comext\bits\test\test_bits.py"; DestDir: "{app}\win32comext\bits\test"; Flags: ignoreversion
Source: ".\Input\python\win32comext\directsound\directsound.pyd"; DestDir: "{app}\win32comext\directsound"; Flags: ignoreversion
Source: ".\Input\python\win32comext\directsound\__init__.py"; DestDir: "{app}\win32comext\directsound"; Flags: ignoreversion
Source: ".\Input\python\win32comext\directsound\test\ds_record.py"; DestDir: "{app}\win32comext\directsound\test"; Flags: ignoreversion
Source: ".\Input\python\win32comext\directsound\test\ds_test.py"; DestDir: "{app}\win32comext\directsound\test"; Flags: ignoreversion
Source: ".\Input\python\win32comext\directsound\test\__init__.py"; DestDir: "{app}\win32comext\directsound\test"; Flags: ignoreversion
Source: ".\Input\python\win32comext\ifilter\ifilter.pyd"; DestDir: "{app}\win32comext\ifilter"; Flags: ignoreversion
Source: ".\Input\python\win32comext\ifilter\ifiltercon.py"; DestDir: "{app}\win32comext\ifilter"; Flags: ignoreversion
Source: ".\Input\python\win32comext\ifilter\__init__.py"; DestDir: "{app}\win32comext\ifilter"; Flags: ignoreversion
Source: ".\Input\python\win32comext\ifilter\demo\filterDemo.py"; DestDir: "{app}\win32comext\ifilter\demo"; Flags: ignoreversion
Source: ".\Input\python\win32comext\internet\inetcon.py"; DestDir: "{app}\win32comext\internet"; Flags: ignoreversion
Source: ".\Input\python\win32comext\internet\internet.pyd"; DestDir: "{app}\win32comext\internet"; Flags: ignoreversion
Source: ".\Input\python\win32comext\internet\__init__.py"; DestDir: "{app}\win32comext\internet"; Flags: ignoreversion
Source: ".\Input\python\win32comext\mapi\emsabtags.py"; DestDir: "{app}\win32comext\mapi"; Flags: ignoreversion
Source: ".\Input\python\win32comext\mapi\exchange.pyd"; DestDir: "{app}\win32comext\mapi"; Flags: ignoreversion
Source: ".\Input\python\win32comext\mapi\exchdapi.pyd"; DestDir: "{app}\win32comext\mapi"; Flags: ignoreversion
Source: ".\Input\python\win32comext\mapi\mapi.pyd"; DestDir: "{app}\win32comext\mapi"; Flags: ignoreversion
Source: ".\Input\python\win32comext\mapi\mapitags.py"; DestDir: "{app}\win32comext\mapi"; Flags: ignoreversion
Source: ".\Input\python\win32comext\mapi\mapiutil.py"; DestDir: "{app}\win32comext\mapi"; Flags: ignoreversion
Source: ".\Input\python\win32comext\mapi\__init__.py"; DestDir: "{app}\win32comext\mapi"; Flags: ignoreversion
Source: ".\Input\python\win32comext\mapi\demos\mapisend.py"; DestDir: "{app}\win32comext\mapi\demos"; Flags: ignoreversion
Source: ".\Input\python\win32comext\propsys\propsys.pyd"; DestDir: "{app}\win32comext\propsys"; Flags: ignoreversion
Source: ".\Input\python\win32comext\propsys\pscon.py"; DestDir: "{app}\win32comext\propsys"; Flags: ignoreversion
Source: ".\Input\python\win32comext\propsys\__init__.py"; DestDir: "{app}\win32comext\propsys"; Flags: ignoreversion
Source: ".\Input\python\win32comext\propsys\test\testpropsys.py"; DestDir: "{app}\win32comext\propsys\test"; Flags: ignoreversion
Source: ".\Input\python\win32comext\shell\shell.pyd"; DestDir: "{app}\win32comext\shell"; Flags: ignoreversion
Source: ".\Input\python\win32comext\shell\shellcon.py"; DestDir: "{app}\win32comext\shell"; Flags: ignoreversion
Source: ".\Input\python\win32comext\shell\__init__.py"; DestDir: "{app}\win32comext\shell"; Flags: ignoreversion
Source: ".\Input\python\win32comext\shell\demos\browse_for_folder.py"; DestDir: "{app}\win32comext\shell\demos"; Flags: ignoreversion
Source: ".\Input\python\win32comext\shell\demos\create_link.py"; DestDir: "{app}\win32comext\shell\demos"; Flags: ignoreversion
Source: ".\Input\python\win32comext\shell\demos\dump_link.py"; DestDir: "{app}\win32comext\shell\demos"; Flags: ignoreversion
Source: ".\Input\python\win32comext\shell\demos\explorer_browser.py"; DestDir: "{app}\win32comext\shell\demos"; Flags: ignoreversion
Source: ".\Input\python\win32comext\shell\demos\IActiveDesktop.py"; DestDir: "{app}\win32comext\shell\demos"; Flags: ignoreversion
Source: ".\Input\python\win32comext\shell\demos\IFileOperationProgressSink.py"; DestDir: "{app}\win32comext\shell\demos"; Flags: ignoreversion
Source: ".\Input\python\win32comext\shell\demos\IShellLinkDataList.py"; DestDir: "{app}\win32comext\shell\demos"; Flags: ignoreversion
Source: ".\Input\python\win32comext\shell\demos\ITransferAdviseSink.py"; DestDir: "{app}\win32comext\shell\demos"; Flags: ignoreversion
Source: ".\Input\python\win32comext\shell\demos\IUniformResourceLocator.py"; DestDir: "{app}\win32comext\shell\demos"; Flags: ignoreversion
Source: ".\Input\python\win32comext\shell\demos\shellexecuteex.py"; DestDir: "{app}\win32comext\shell\demos"; Flags: ignoreversion
Source: ".\Input\python\win32comext\shell\demos\viewstate.py"; DestDir: "{app}\win32comext\shell\demos"; Flags: ignoreversion
Source: ".\Input\python\win32comext\shell\demos\walk_shell_folders.py"; DestDir: "{app}\win32comext\shell\demos"; Flags: ignoreversion
Source: ".\Input\python\win32comext\shell\demos\servers\column_provider.py"; DestDir: "{app}\win32comext\shell\demos\servers"; Flags: ignoreversion
Source: ".\Input\python\win32comext\shell\demos\servers\context_menu.py"; DestDir: "{app}\win32comext\shell\demos\servers"; Flags: ignoreversion
Source: ".\Input\python\win32comext\shell\demos\servers\copy_hook.py"; DestDir: "{app}\win32comext\shell\demos\servers"; Flags: ignoreversion
Source: ".\Input\python\win32comext\shell\demos\servers\empty_volume_cache.py"; DestDir: "{app}\win32comext\shell\demos\servers"; Flags: ignoreversion
Source: ".\Input\python\win32comext\shell\demos\servers\folder_view.py"; DestDir: "{app}\win32comext\shell\demos\servers"; Flags: ignoreversion
Source: ".\Input\python\win32comext\shell\demos\servers\icon_handler.py"; DestDir: "{app}\win32comext\shell\demos\servers"; Flags: ignoreversion
Source: ".\Input\python\win32comext\shell\demos\servers\shell_view.py"; DestDir: "{app}\win32comext\shell\demos\servers"; Flags: ignoreversion
Source: ".\Input\python\win32comext\shell\test\testShellFolder.py"; DestDir: "{app}\win32comext\shell\test"; Flags: ignoreversion
Source: ".\Input\python\win32comext\shell\test\testShellItem.py"; DestDir: "{app}\win32comext\shell\test"; Flags: ignoreversion
Source: ".\Input\python\win32comext\shell\test\testSHFileOperation.py"; DestDir: "{app}\win32comext\shell\test"; Flags: ignoreversion
Source: ".\Input\python\win32comext\taskscheduler\taskscheduler.pyd"; DestDir: "{app}\win32comext\taskscheduler"; Flags: ignoreversion
Source: ".\Input\python\win32comext\taskscheduler\__init__.py"; DestDir: "{app}\win32comext\taskscheduler"; Flags: ignoreversion
Source: ".\Input\python\win32comext\taskscheduler\test\test_addtask.py"; DestDir: "{app}\win32comext\taskscheduler\test"; Flags: ignoreversion
Source: ".\Input\python\win32comext\taskscheduler\test\test_addtask_1.py"; DestDir: "{app}\win32comext\taskscheduler\test"; Flags: ignoreversion
Source: ".\Input\python\win32comext\taskscheduler\test\test_addtask_2.py"; DestDir: "{app}\win32comext\taskscheduler\test"; Flags: ignoreversion
Source: ".\Input\python\win32comext\taskscheduler\test\test_localsystem.py"; DestDir: "{app}\win32comext\taskscheduler\test"; Flags: ignoreversion

[Dirs]
Name: "{app}\adodbapi\examples"
Name: "{app}\adodbapi\test"
Name: "{app}\isapi\doc"
Name: "{app}\isapi\samples"
Name: "{app}\isapi\test"
Name: "{app}\pythonwin\pywin"
Name: "{app}\pythonwin\pywin\debugger"
Name: "{app}\pythonwin\pywin\Demos"
Name: "{app}\pythonwin\pywin\Demos\app"
Name: "{app}\pythonwin\pywin\Demos\ocx"
Name: "{app}\pythonwin\pywin\dialogs"
Name: "{app}\pythonwin\pywin\docking"
Name: "{app}\pythonwin\pywin\framework"
Name: "{app}\pythonwin\pywin\framework\editor"
Name: "{app}\pythonwin\pywin\framework\editor\color"
Name: "{app}\pythonwin\pywin\idle"
Name: "{app}\pythonwin\pywin\mfc"
Name: "{app}\pythonwin\pywin\scintilla"
Name: "{app}\pythonwin\pywin\tools"
Name: "{app}\win32\Demos"
Name: "{app}\win32\Demos\c_extension"
Name: "{app}\win32\Demos\dde"
Name: "{app}\win32\Demos\images"
Name: "{app}\win32\Demos\pipes"
Name: "{app}\win32\Demos\security"
Name: "{app}\win32\Demos\security\sspi"
Name: "{app}\win32\Demos\service"
Name: "{app}\win32\Demos\win32wnet"
Name: "{app}\win32\include"
Name: "{app}\win32\lib"
Name: "{app}\win32\libs"
Name: "{app}\win32\scripts"
Name: "{app}\win32\scripts\ce"
Name: "{app}\win32\scripts\VersionStamp"
Name: "{app}\win32\test"
Name: "{app}\win32\test\win32rcparser"
Name: "{app}\win32com\client"
Name: "{app}\win32com\demos"
Name: "{app}\win32com\gen_py"
Name: "{app}\win32com\HTML"
Name: "{app}\win32com\HTML\image"
Name: "{app}\win32com\include"
Name: "{app}\win32com\libs"
Name: "{app}\win32com\makegw"
Name: "{app}\win32com\server"
Name: "{app}\win32com\servers"
Name: "{app}\win32com\test"
Name: "{app}\win32comext\adsi"
Name: "{app}\win32comext\adsi\demos"
Name: "{app}\win32comext\authorization"
Name: "{app}\win32comext\authorization\demos"
Name: "{app}\win32comext\axcontrol"
Name: "{app}\win32comext\axdebug"
Name: "{app}\win32comext\axscript"
Name: "{app}\win32comext\axscript\client"
Name: "{app}\win32comext\axscript\Demos"
Name: "{app}\win32comext\axscript\Demos\client"
Name: "{app}\win32comext\axscript\Demos\client\asp"
Name: "{app}\win32comext\axscript\Demos\client\asp\interrupt"
Name: "{app}\win32comext\axscript\Demos\client\ie"
Name: "{app}\win32comext\axscript\Demos\client\wsh"
Name: "{app}\win32comext\axscript\server"
Name: "{app}\win32comext\axscript\test"
Name: "{app}\win32comext\bits"
Name: "{app}\win32comext\bits\test"
Name: "{app}\win32comext\directsound"
Name: "{app}\win32comext\directsound\test"
Name: "{app}\win32comext\ifilter"
Name: "{app}\win32comext\ifilter\demo"
Name: "{app}\win32comext\internet"
Name: "{app}\win32comext\mapi"
Name: "{app}\win32comext\mapi\demos"
Name: "{app}\win32comext\propsys"
Name: "{app}\win32comext\propsys\test"
Name: "{app}\win32comext\shell"
Name: "{app}\win32comext\shell\demos"
Name: "{app}\win32comext\shell\demos\servers"
Name: "{app}\win32comext\shell\test"
Name: "{app}\win32comext\taskscheduler"
Name: "{app}\win32comext\taskscheduler\test"