reg import C:\PostSetup\reg\CmdHereWindows10.reg
reg import C:\PostSetup\reg\DisableStorageSense.reg
reg import C:\PostSetup\reg\EnableNumlock.reg
reg import C:\PostSetup\reg\NewExplorerDefault.reg
reg import C:\PostSetup\reg\NoDumpStackLog.reg
reg import C:\PostSetup\reg\NoOpenFileWarnings.reg
reg import C:\PostSetup\reg\NoRecycleFilesNoIcon.reg
reg import C:\PostSetup\reg\NoShortcutAppend.reg
reg import C:\PostSetup\reg\OpenWithNotepad.reg
reg import C:\PostSetup\reg\PowershellUnrestricted.reg
reg import C:\PostSetup\reg\RemoveLibrariesThisPC.reg
reg import C:\PostSetup\reg\TakeOwnership.reg
reg import C:\PostSetup\reg\TimeSyncUTC.reg
reg import C:\PostSetup\reg\StartPinFix.reg
reg import C:\Tools\NotePad2\x64\NotepadReplace.reg
reg import C:\Tools\UltraISO\registration.reg
powercfg.exe /hibernate off
powercfg.exe /import C:\PostSetup\reg\high-performance.pow
bcdedit /set {current} bootmenupolicy legacy
bcdedit /timeout 5
timeout /t 7
powershell.exe C:\PostSetup\apps\RemoveAppsFinal.ps1
wmic product where name="Dell Update" call uninstall
wmic product where name="Dell Update - SupportAssist Update Plugin" call uninstall
wmic product where name="Dell SupportAssistAgent" call uninstall
wmic product where name="Dell Digital Delivery" call uninstall
wmic product where name="Dell Power Manager Service" call uninstall
wmic product where name="SmartByte Drivers and Services" call uninstall
wmic product where name="DSC/AA Factory Installer" call uninstall
"C:\Program Files\Dell\SupportAssist\uninstaller.exe"
"C:\ProgramData\Package Cache\{9ae76d49-72b5-402c-b900-0dc71ab8ebef}\DellSupportAssistRemediationServiceInstaller.exe"
timeout /t 7
lxrun /install /y
reboot
exit


