; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "ACBrMonitor"
#define MyAppVerName "ACBrMonitor-0.8.14b"
#define MyAppPublisher "Projeto ACBr"
#define MyAppURL "http://acbr.sourceforge.net/wiki/index.php/Monitor"
#define MyAppUrlName "ACBrMonitor.url"
#define MyAppExeName "ACBrMonitor.exe"
#define QTDLL "qtintf70.dll"

[Setup]
AppName={#MyAppName}
AppVerName={#MyAppVerName}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={sd}\{#MyAppName}
DefaultGroupName={#MyAppName}
LicenseFile=licenca.txt
OutputBaseFilename={#MyAppVerName}-Windows-Instalador
Compression=lzma
SolidCompression=yes
AppMuTex=ACBrMonitor

[Types]
Name: compact; Description: Instala��o M�nima
Name: full; Description: Instala��o Completa
Name: custom; Description: Instala��o Customizada; Flags: iscustom

[Components]
Name: programa; Description: Programa ACBrMonitor; Types: full compact custom; Flags: fixed
Name: console; Description: ACBrMonitor modo Console; Types: full custom
Name: help; Description: Arquivos de Ajuda; Types: full custom
Name: exemplos; Description: Exemplos de Uso; Types: full custom

[Languages]
Name: brazilianportuguese; MessagesFile: compiler:Languages\BrazilianPortuguese.isl

[Tasks]
Name: desktopicon; Description: {cm:CreateDesktopIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: unchecked

[Files]
Source: ACBrMonitor.exe; DestDir: {app}; Flags: ignoreversion; Components: programa
Source: ACBrMonitorConsole.exe; DestDir: {app}; Flags: ignoreversion; Components: console
Source: QECFTeste.exe; DestDir: {app}; Flags: ignoreversion; Components: programa
Source: ..\Exemplos\TesteTXT.BAT; DestDir: {app}\Exemplos; Flags: ignoreversion; Components: exemplos
Source: ..\Exemplos\Clipper_TXT_xHarbour_Socket.zip; DestDir: {app}\Exemplos; Flags: ignoreversion; Components: exemplos
Source: ..\Exemplos\Cobol_TXT_Socket.zip; DestDir: {app}\Exemplos; Flags: ignoreversion; Components: exemplos
Source: leia-me.txt; DestDir: {app}; Flags: ignoreversion; Components: programa
Source: LICENCA.TXT; DestDir: {app}; Flags: ignoreversion; Components: programa
Source: LICENSE.TXT; DestDir: {app}; Flags: ignoreversion; Components: programa
Source: ACBrMonitor.chm; DestDir: {app}; Flags: ignoreversion; Components: help
Source: ACBrMonitor-change-log.txt; DestDir: {app}; Flags: ignoreversion; Components: help
Source: DLLs\{#QTDLL}; DestDir: {sys}; Flags: ; Components: programa
Source: DLLs\inpout32.dll; DestDir: {sys}; Flags: ; Components: programa
Source: OpenSSL\openssl.exe; DestDir: {app}; Flags: ; Components: programa
Source: OpenSSL\libeay32.dll; DestDir: {app}; Flags: ; Components: programa
Source: OpenSSL\ssleay32.dll; DestDir: {app}; Flags: ; Components: programa
Source: OpenSSL\msvcr71.dll; DestDir: {app}; Flags: ; Components: programa
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[INI]
Filename: {app}\{#MyAppUrlName}; Section: InternetShortcut; Key: URL; String: {#MyAppURL}; Components: help

[Icons]
Name: {group}\{#MyAppName}; Filename: {app}\{#MyAppExeName}; WorkingDir: {app}; Components: programa
Name: {group}\Programa para Configurar e Testar ECF; Filename: {app}\QECFTeste.exe; WorkingDir: {app}; Components: programa
Name: {group}\LEIA-ME.TXT; Filename: notepad; Parameters: leia-me.txt; WorkingDir: {app}; Components: help
Name: {group}\Manual do ACBrMonitor; Filename: {app}\ACBrMonitor.chm; WorkingDir: {app}; Components: help
Name: {group}\Exemplo usando Monitoramento TXT; Filename: {app}\Exemplos\TesteTXT.BAT; WorkingDir: {app}\Exemplos\; Components: exemplos
Name: {group}\Pasta Exemplos; Filename: {app}\Exemplos\; Components: exemplos
Name: {userdesktop}\{#MyAppName}; Filename: {app}\{#MyAppExeName}; WorkingDir: {app}; Tasks: desktopicon
Name: {userstartup}\{#MyAppName}; Filename: {app}\{#MyAppExeName}; WorkingDir: {app}
Name: {group}\{cm:ProgramOnTheWeb,{#MyAppName}}; Filename: {app}\{#MyAppUrlName}; Components: help

[Run]
Filename: {app}\{#MyAppExeName}; Description: {cm:LaunchProgram,{#MyAppName}}; Flags: nowait postinstall skipifsilent
