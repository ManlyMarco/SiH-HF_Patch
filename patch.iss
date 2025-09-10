; Copyright (C) 2025  ManlyMarco
; This program is free software: you can redistribute it and/or modify
; it under the terms of the GNU General Public License as published by
; the Free Software Foundation, either version 3 of the License, or
; (at your option) any later version.
;--------------------------------------------Full game name for naming patch itself and desktop icons
#define NAME "Summer in Heat"
;----------------------------------------------------------------------------Current HF Patch version
#define VERSION "1.4.1"
;----------------------------------------------------------------------------------------------------
#include "Assets\Header.iss"

[Setup]
AppName=HF Patch for Summer in Heat
OutputBaseFilename=SummerInHeat HF Patch v{#VERSION}
ArchitecturesInstallIn64BitMode=x64
CloseApplications=yes
RestartApplications=no
CloseApplicationsFilter=*.exe,*.dll
Compression=lzma2/fast
;lzma2/ultra64 | zip | lzma2/fast
LZMAUseSeparateProcess=yes
;LZMADictionarySize=208576
LZMADictionarySize=262144
LZMANumFastBytes=273
LZMANumBlockThreads=5
DiskSpanning=no
DefaultDirName=C:\SummerInHeat-Ver1.02-DLsite\

WindowResizable=yes
WizardStyle=modern
WizardSizePercent=120,150

[Languages]
Name: "en"; MessagesFile: "compiler:Default.isl"
Name: "jp"; MessagesFile: "compiler:Languages\Japanese.isl"

#include "Translations.iss"

[Types]
Name: "full_en";  Description: "{cm:fullInstall}";  Languages: en;
Name: "full";     Description: "{cm:fullInstall}";  Languages: jp;
Name: "extra_en"; Description: "{cm:extraInstall}"; Languages: en;
Name: "extra";    Description: "{cm:extraInstall}"; Languages: jp;
Name: "bare";     Description: "{cm:bareInstall}"
Name: "none";     Description: "{cm:noneInstall}"
Name: "custom";   Description: "{cm:customInstall}"; Flags: iscustom

; bad #define CurrentDate GetDateTimeString('yyyy-mm-dd', '-', ':');

[Components]
;Name: "Patch"; Description: "Clean up and fix common issues (WARNING: If the game is updated in the future this might cause issues - try reinstalling the game and turning this off next time)"; Types: full_en extra_en full extra custom bare none;

[Files]
Source: "HelperLib.dll";                  DestDir: "{app}"      ; Flags: dontcopy
Source: "Plugin Readme.md";               DestDir: "{app}"
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
;Source: "Input\_Patch\orig\*";            DestDir: "{app}"      ; Flags: ignoreversion recursesubdirs createallsubdirs solidbreak; Components: Patch
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#include "components.iss"

[Files]
Source: "Input\BepInEx_config\*";         DestDir: "{app}\GameData"; Flags: ignoreversion recursesubdirs createallsubdirs solidbreak;   Components: BepInEx
Source: "Input\BepInEx_config_dev\*";     DestDir: "{app}\GameData"; Flags: ignoreversion recursesubdirs createallsubdirs;   Components: BepInEx\Dev
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Source: "Input\Config_eng\*"; DestDir: "{app}\GameData\BepInEx\config\"; Flags: ignoreversion recursesubdirs; Components: BepInEx; Languages: en
Source: "Input\Config_jap\*"; DestDir: "{app}\GameData\BepInEx\config\"; Flags: ignoreversion recursesubdirs; Components: BepInEx; Languages: jp

[InstallDelete]
; Always not necessary
Type: files; Name: "{app}\GameData\0Harmony.dll"
Type: files; Name: "{app}\GameData\BepInEx.dll"
Type: files; Name: "{app}\GameData\Mono.Cecil.dll"

; Clear old graphics settings just in case
Type: files; Name: "{app}\GameData\BepInEx\config\keelhauled.graphicssettings.cfg"

; Junk
Type: filesandordirs; Name: "{app}\GameData\BepInEx\bepinex4_backup"
Type: filesandordirs; Name: "{app}\GameData\BepInEx\cache"
Type: filesandordirs; Name: "{app}\GameData\BepInEx_Shim_Backup"
Type: files; Name: "{app}\GameData\*.log"
Type: files; Name: "{app}\GameData\*.pdb"
Type: files; Name: "{app}\GameData\changelog.txt"
Type: files; Name: "{app}\HF_Patch_log.txt"
Type: files; Name: "{app}\GameData\output_log.txt"
; Unity crash reports
Type: filesandordirs; Name: "{app}\GameData\20??-??-??_??????"

; Will get replaced, makes sure there are no stale files left
Type: filesandordirs; Name: "{app}\GameData\BepInEx\cache"; Components: BepInEx
Type: filesandordirs; Name: "{app}\GameData\BepInEx\core"; Components: BepInEx
Type: files; Name: "{app}\GameData\BepInEx.Patcher.exe"; Components: BepInEx
Type: files; Name: "{app}\GameData\version.dll"; Components: BepInEx
Type: files; Name: "{app}\GameData\winhttp.dll"; Components: BepInEx
Type: files; Name: "{app}\GameData\doorstop_config.ini"; Components: BepInEx

Type: files; Name: "{app}\GameData\BepInEx\plugins\FPSCounter.dll"; Components: MISC\FPS

; Remove IPA
;Type: filesandordirs; Name: "{app}\GameData\IPA"; Components: Patch
;Type: filesandordirs; Name: "{app}\GameData\Plugins"; Components: Patch
;Type: files; Name: "{app}\GameData\IPA.exe"; Components: Patch
;Type: files; Name: "{app}\GameData\Mono.Cecil.dll"; Components: Patch

; Clean dlls completely to fix problems with copied/unnecessary/old dlls
;Type: filesandordirs; Name: "{app}\GameData\SummerInHeat_Data\Managed"; Components: Patch
;Type: filesandordirs; Name: "{app}\GameData\SummerInHeat_Data\Plugins"; Components: Patch
;Type: filesandordirs; Name: "{app}\GameData\MonoBleedingEdge"; Components: Patch

[Tasks]
Name: desktopicon; Description: "{cm:TaskIcon}"; Flags: unchecked
Name: delete; Description: "{cm:TaskDelete}";
Name: delete\Plugins; Description: "{cm:TaskDeletePlugins}";
Name: delete\Config; Description: "{cm:TaskDeletePluginSettings}"

[Icons]
Name: "{userdesktop}\Summer in Heat";    Filename: "{app}\『SummerInHeat』 English Launcher.exe"; IconFilename: "{app}\GameData\SummerInHeat.exe"; WorkingDir: "{app}\"; Flags: createonlyiffileexists; Languages: en; Tasks: desktopicon; Comment: "Summer in Heat English launcher"
Name: "{userdesktop}\夏のサカり";    Filename: "{app}\『夏のサカり』起動ランチャー.exe";          IconFilename: "{app}\GameData\SummerInHeat.exe"; WorkingDir: "{app}\"; Flags: createonlyiffileexists; Languages: jp; Tasks: desktopicon; Comment: "『夏のサカり』起動ランチャー"
;Name: "{userdesktop}\Summer in Heat VR"; Filename: "{app}\Start game in VR mode.bat";         IconFilename: "{app}\GameData\SummerInHeat.exe"; WorkingDir: "{app}\"; Flags: createonlyiffileexists runminimized;   Tasks: desktopicon; Comment: "Start Summer in Heat in VR mode"

[Run]
Filename: "{app}\『SummerInHeat』 English Launcher.exe"; Description: "Start Summer in Heat in English"; Flags: postinstall runasoriginaluser nowait skipifsilent skipifdoesntexist; Components: CustomLauncher_EN
Filename: "{app}\『夏のサカり』起動ランチャー.exe";          Description: "Start Summer in Heat in Japanese"; Flags: postinstall runasoriginaluser nowait skipifsilent skipifdoesntexist unchecked
;Filename: "{app}\Start the game in VR mode.bat";         Description: "Start Summer in Heat in VR mode";     Flags: shellexec postinstall runasoriginaluser nowait skipifsilent skipifdoesntexist unchecked runminimized; Components: Feature\VR

;Filename: "{app}\Manual\manual_en.html"; Description: "Open game manual"; Languages: en; Flags: shellexec postinstall runasoriginaluser nowait skipifsilent skipifdoesntexist unchecked; Components: Patch\LocalManualsJaEn
;Filename: "{app}\Manual\manual_jp.html"; Description: "プレイングマニュアル";    Languages: jp; Flags: shellexec postinstall runasoriginaluser nowait skipifsilent skipifdoesntexist unchecked; Components: Patch\LocalManualsJaEn

Filename: "notepad.exe"; Parameters: """{app}\Plugin Readme.md"""; Description: "Show information about included plugins"; Flags: postinstall runasoriginaluser nowait skipifsilent skipifdoesntexist unchecked

Filename: "https://github.com/ManlyMarco/SiH-HF_Patch"; Description: "Latest releases and source code"; Flags: shellexec runasoriginaluser postinstall unchecked nowait skipifsilent

Filename: "https://discord.gg/hevygx6"; Description: "{cm:RunDiscord}"; Flags: shellexec runasoriginaluser postinstall unchecked nowait skipifsilent;

Filename: "https://www.patreon.com/ManlyMarco"; Description: "ManlyMarco Patreon (Creator of this patch)"; Flags: shellexec runasoriginaluser postinstall unchecked nowait skipifsilent;

[Code]
procedure CreateBackup(path: String);
external 'CreateBackup@files:HelperLib.dll stdcall';

procedure FixConfig(path: String);
external 'FixConfig@files:HelperLib.dll stdcall';

procedure PostInstallCleanUp(path: String);
external 'PostInstallCleanUp@files:HelperLib.dll stdcall';

procedure WriteVersionFile(path, version: String);
external 'WriteVersionFile@files:HelperLib.dll stdcall';

procedure SetConfigDefaults(path: String);
external 'SetConfigDefaults@files:HelperLib.dll stdcall';

procedure FixPermissions(path: String);
external 'FixPermissions@files:HelperLib.dll stdcall';

procedure RemoveJapaneseCards(path: String);
external 'RemoveJapaneseCards@files:HelperLib.dll stdcall';

procedure RemoveNonstandardListfiles(path: String);
external 'RemoveNonstandardListfiles@files:HelperLib.dll stdcall';

procedure RemoveSideloaderDuplicates(path: String);
external 'RemoveSideloaderDuplicates@files:HelperLib.dll stdcall';

procedure RemoveModsExceptModpacks(path: String);
external 'RemoveModsExceptModpacks@files:HelperLib.dll stdcall';

function CheckVersionNumber(path: String): Boolean;
external 'CheckVersionNumber@files:HelperLib.dll stdcall';


function VersionIsCompatible(): Boolean;
var
  Size: Integer;
begin
  FileSize(ExpandConstant('{app}\GameData\SummerInHeat_Data\Managed\Assembly-CSharp.dll'), Size);
  Result := Size = 3546112;
end;

function IsCharValid(Value: Char): Boolean;
begin
  Result := Ord(Value) <= $007F;
end;

function IsDirNameValid(const Value: string): Boolean;
var
  I: Integer;
begin
  Result := False;
  for I := 1 to Length(Value) do
    if not IsCharValid(Value[I]) then
      Exit;
  Result := True;
end;

function NextButtonClick(CurPageID: Integer): Boolean;
var
  ResultCode: Integer;
begin
  // allow the setup turning to the next page
  Result := True;

  if (CurPageID = wpSelectDir) then
  begin
    if Result = True then
    begin
      if (FileExists(ExpandConstant('{app}\EmotionCreators.exe'))
      or FileExists(ExpandConstant('{app}\Koikatu.exe'))
      or FileExists(ExpandConstant('{app}\Koikatsu Party.exe'))
      or FileExists(ExpandConstant('{app}\KoikatsuSunshine.exe'))
      or FileExists(ExpandConstant('{app}\PlayHome.exe'))
      or FileExists(ExpandConstant('{app}\HoneySelect2.exe'))
      or FileExists(ExpandConstant('{app}\VR_Kanojo.exe'))
      or FileExists(ExpandConstant('{app}\RoomGirl.exe'))
      or FileExists(ExpandConstant('{app}\KoiKoiMonogatari.exe'))
      or FileExists(ExpandConstant('{app}\KoiKoiMonogatariVR.exe'))
      or FileExists(ExpandConstant('{app}\AGH.exe'))
      or FileExists(ExpandConstant('{app}\IO.exe'))
      or FileExists(ExpandConstant('{app}\GameData\AGH.exe'))
      or FileExists(ExpandConstant('{app}\GameData\IO.exe'))
      or FileExists(ExpandConstant('{app}\HoneyCome.exe'))
      or FileExists(ExpandConstant('{app}\AI-Syoujyo.exe'))
      or FileExists(ExpandConstant('{app}\AI-Shoujo.exe'))) then
      begin
        MsgBox('It looks like a different game is installed to the selected directory. This is very likely to break one or both of the games, and to break the patch.' + #13#10 + #13#10 + 'Make sure you selected the correct directory, and that you downloaded the correct patch for your game. If you installed 2 games to the same directory you will have to reinstall them both to separate directories to fix this.', mbError, MB_OK);
        Result := False;
      end
    end;
    
    if (not FileExists(ExpandConstant('{app}\GameData\SummerInHeat.exe'))) then
    begin
      MsgBox(ExpandConstant('{cm:MsgExeNotFound}'), mbError, MB_OK);
      Result := False;
    end;
    
    if Result = True then
    begin
      if (Length(ExpandConstant('{app}')) > 100) then
      begin
        MsgBox(ExpandConstant('{cm:MsgDeepPath}'), mbError, MB_OK);
        Result := False;
      end
    end;
    
    if Result = True then
    begin
      if (not IsDirNameValid(ExpandConstant('{app}'))) then
      begin
        MsgBox(ExpandConstant('{cm:MsgJpCharsInPath}'), mbError, MB_OK);
        Result := False;
      end
    end;
    
    if Result = True then
    begin
      if (not VersionIsCompatible()) then
      begin
        MsgBox(ExpandConstant('WARNING: Your version of the game could be incompatible with this patch! If you proceed with installation you might break the game or introduce various bugs!' + #13#10 + #13#10 +
        'Make sure that you are using the latest versions of this patch and the game.' + #13#10 + 
        '- Redownload the game from the store you got it from to get the latest version.' + #13#10 + 
        '- You can find the latest patch release on github.com/ManlyMarco/SiH-HF_Patch'), mbError, MB_OK);
      end
    end;

    if Result = True then
    begin
      if (Pos(LowerCase(ExpandConstant('{app}\')), LowerCase(ExpandConstant('{src}\'))) > 0) then
      begin
        MsgBox('This patch is inside of the game directory you are attempting to install to. You have to move the patch files outside of the game directory and try again.', mbError, MB_OK);
        Result := False;
      end
    end;
  end;

  // After install completes
  if (CurPageID = wpFinished) then
  begin
    // Delete Japanese versions of cards and bgs if English versions are installed (only those with different names)
    //if IsComponentSelected('AT\TL\EnglishTranslation\UserData') then
    //    RemoveJapaneseCards(ExpandConstant('{app}'));

    // Always clean up sideloader mods in case user already messed up
    //if IsTaskSelected('fixSideloaderDupes') then
    //    RemoveSideloaderDuplicates(ExpandConstant('{app}'));

    //FixConfig(ExpandConstant('{app}'));
    //WriteVersionFile(ExpandConstant('{app}'), '{#VERSION}');

    PostInstallCleanUp(ExpandConstant('{app}\GameData'));
  end;
end;

function PrepareToInstall(var NeedsRestart: Boolean): String;
var
  ResultCode: Integer;
begin
  NeedsRestart := false;
  try
    // Close the game if it's running
    Exec('taskkill', '/F /IM SummerInHeat.exe', ExpandConstant('{app}\GameData'), SW_HIDE, ewWaitUntilTerminated, ResultCode);
    Exec('taskkill', '/F /IM 『SummerInHeat』 English Launcher.exe', ExpandConstant('{app}'), SW_HIDE, ewWaitUntilTerminated, ResultCode);
    Exec('taskkill', '/F /IM 『夏のサカり』起動ランチャー.exe', ExpandConstant('{app}'), SW_HIDE, ewWaitUntilTerminated, ResultCode);
    Exec('taskkill', '/F /IM IPA.exe', ExpandConstant('{app}\GameData'), SW_HIDE, ewWaitUntilTerminated, ResultCode);

    // Fix file permissions
    FixPermissions(ExpandConstant('{app}'));
  except
    ShowExceptionMessage();
  end;

  CreateBackup(ExpandConstant('{app}\GameData'));

  // Backup plugin settings
  if (not IsTaskSelected('delete\Config') and FileExists(ExpandConstant('{app}\GameData\BepInEx\config.ini'))) then
    FileCopy(ExpandConstant('{app}\GameData\BepInEx\config.ini'), ExpandConstant('{app}\GameData\config.ini'), false);

  // Remove BepInEx folder
  if (IsTaskSelected('delete\Config') and IsTaskSelected('delete\Plugins')) then begin
    DelTree(ExpandConstant('{app}\GameData\BepInEx'), True, True, True);
  end
  else
  begin
    // Or only remove plugins
    if (IsTaskSelected('delete\Plugins')) then begin
      DelTree(ExpandConstant('{app}\GameData\BepInEx\plugins'), True, True, True);
      DelTree(ExpandConstant('{app}\GameData\BepInEx\patchers'), True, True, True);
      DelTree(ExpandConstant('{app}\GameData\BepInEx\IPA'), True, True, True);
      Exec(ExpandConstant('{cmd}'), '/c del *.dll', ExpandConstant('{app}\GameData\BepInEx'), SW_SHOW, ewWaitUntilTerminated, ResultCode);
      Exec(ExpandConstant('{cmd}'), '/c del *.dl_', ExpandConstant('{app}\GameData\BepInEx'), SW_SHOW, ewWaitUntilTerminated, ResultCode);
    end;
  end;

  if (not IsTaskSelected('delete\Config')) then
  begin
    // Restore the settings and remove the backup
    CreateDir(ExpandConstant('{app}\GameData\BepInEx'));
    if(FileExists(ExpandConstant('{app}\GameData\config.ini'))) then
    begin
      FileCopy(ExpandConstant('{app}\GameData\config.ini'), ExpandConstant('{app}\GameData\BepInEx\config.ini'), false);
      DeleteFile(ExpandConstant('{app}\GameData\config.ini'));
    end;
  end
  else
  begin
    // Or remove settings
    DeleteFile(ExpandConstant('{app}\GameData\BepInEx\config.ini'));
  end;

  if (IsTaskSelected('delete\Sidemods')) then
    RemoveModsExceptModpacks(ExpandConstant('{app}\GameData'));

  //if (IsTaskSelected('delete\Listfiles')) then
  //  RemoveNonstandardListfiles(ExpandConstant('{app}'));
  
  SetConfigDefaults(ExpandConstant('{app}\GameData'));
end;