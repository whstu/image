; 脚本由 Inno Setup 脚本向导 生成！
; 有关创建 Inno Setup 脚本文件的详细资料请查阅帮助文档！

#define MyAppName "希沃克星-阉割版"
#define MyAppVersion "1.2.1.7"
#define MyAppPublisher "WHSTU Studio"
#define MyAppURL "https://whstu.us.kg/"
#define MyAppExeName "SeewoKiller.exe"
#define Copyright "Copyright WHSTU Studio 2017-2024"

[Setup]
; 注: AppId的值为单独标识该应用程序。
; 不要为其他安装程序使用相同的AppId值。
; (生成新的GUID，点击 工具|在IDE中生成GUID。)
AppId={{1584E303-D8AB-481C-A14D-317453983148}
AppName={#MyAppName}
AppVersion={#MyAppVersion}VersionInfoVersion={#MyAppVersion}
AppCopyright={#Copyright};AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DisableProgramGroupPage=yes
LicenseFile=E:\devc++\DEV\SeewoKiller\!Licence.txt
InfoBeforeFile=E:\devc++\DEV\SeewoKiller\!install.txt
InfoAfterFile=E:\devc++\DEV\SeewoKiller\!install.txt
OutputDir=E:\devc++\DEV\SeewoKiller\.安装包
OutputBaseFilename=setup-small
SetupIconFile=E:\devc++\DEV\SeewoKiller\clabel_friends_badge.ico
Compression=lzma
SolidCompression=yes

[Languages]
Name: "chinesesimp"; MessagesFile: "compiler:Default.isl"
Name: "catalan"; MessagesFile: "compiler:Languages\Catalan.isl"
Name: "chinesetrad"; MessagesFile: "compiler:Languages\ChineseTrad.isl"
Name: "english"; MessagesFile: "compiler:Languages\English.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: checkablealone; OnlyBelowVersion: 0,6.3

[Files]
Source: "E:\devc++\DEV\SeewoKiller\SeewoKiller.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "E:\devc++\DEV\SeewoKiller\jsoncpp.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "E:\devc++\DEV\SeewoKiller\libcurl.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "E:\devc++\DEV\SeewoKiller\libGLESv2.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "E:\devc++\DEV\SeewoKiller\libwinpthread-1.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "E:\devc++\DEV\SeewoKiller\LinkConfVDisk.bat"; DestDir: "{app}"; Flags: ignoreversion
Source: "E:\devc++\DEV\SeewoKiller\LinkLogVDisk.bat"; DestDir: "{app}"; Flags: ignoreversion
Source: "E:\devc++\DEV\SeewoKiller\msvcp140.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "E:\devc++\DEV\SeewoKiller\msys-2.0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "E:\devc++\DEV\SeewoKiller\msys-iconv-2.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "E:\devc++\DEV\SeewoKiller\msys-intl-8.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "E:\devc++\DEV\SeewoKiller\SeewoKiller.ico"; DestDir: "{app}"; Flags: ignoreversion
; 注意: 不要在任何共享系统文件上使用“Flags: ignoreversion”

[Icons]
Name: "{commonprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

