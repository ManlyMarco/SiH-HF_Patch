[Components]
Name: "CustomLauncher_JP";                     Description: "Custom JP Launcher v1.0.0.0 (Modified version of the original launcher with some tweaks)"; Types: full_en full extra extra_en
Name: "CustomLauncher_EN";                     Description: "Custom EN Launcher v1.0.0.0 (Translated game launcher. Based on the original launcher)"; Types: full_en extra_en
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Name: "BepInEx";                               Description: "BepInEx v5.4.23.2 (Plugin framework)"                                                 ; Types: full_en full extra extra_en custom bare; Flags: fixed
Name: "BepInEx\MessageCenter";                 Description: "Message Center v1.1.1.1 (Allows plugins to show messages in top left corner of the game)"; Types: full_en full extra extra_en custom bare
Name: "BepInEx\ConfigurationManager";          Description: "Configuration Manager v18.4 (Can change plugin settings. Press F12 (or F1 > Plugin settings) to open)"; Types: full_en full extra extra_en custom bare
Name: "BepInEx\Dev";                           Description: "Developer mode (Enable log console)"                                                  
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Name: "UNC";                                   Description: "{cm:CompUNC}"                                                                         ; Types: full_en full extra extra_en
Name: "UNC\SiH_Uncensor";                      Description: "SummerInHeat Uncensor v1.2 (Adds a new 'OFF' option to the 'Mosaic type' dropdown in settings, which fully uncensors the game)"; Types: full_en full extra extra_en
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Name: "AT";                                    Description: "XUnity Auto Translator v5.4.4 (Translation loader)"                                   ; Types: full_en full extra extra_en custom
Name: "AT\TL";                                 Description: "English translation v2025-02-06 (Full English translation of the in-game text)"       ; Types: full_en extra_en
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
; Name: "Content";                               Description: "Additional content (Needed to properly load most character cards and scenes)"         ; Types: full extra
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Name: "FIX";                                   Description: "Fixes and improvements"                                                               ; Types: extra_en extra
Name: "FIX\SiH_Tweaks";                        Description: "SiH_Tweaks v1.1.0.0 (Helps fully translate the game and brings some other improvements. You can enable debug mode from Settings > Plugin Settings)"; Types: full_en full extra extra_en
Name: "FIX\GraphicsSettings";                  Description: "Graphics Settings v1.3 (Adds more graphics settings to Plugin settings, improves graphics by default)"; Types: full_en extra_en full extra
Name: "FIX\CultureFix";                        Description: "CultureFix v22.0.2 (Force the game's process locale to Japanese to avoid potential issues on some systems)"; Types: full_en full extra extra_en
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Name: "Feature";                               Description: "Additional features"                                                                  ; Types: extra_en extra
Name: "Feature\MuteInBackground";              Description: "Mute In Background v1.1 (Mute the game when not focused)"                             ; Types: full_en full extra extra_en
Name: "Feature\EnableResize";                  Description: "Enable Resize v3.0 (Allows resizing of game window, can be used to play the game in ultrawide resolutions with some minor UI issues)"; Types: extra extra_en
Name: "Feature\LoveMachine";                   Description: "LoveMachine.Core v3.20.101 (Adds support for some computer-controlled sex toys)"      
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Name: "MISC";                                  Description: "{cm:CompMISC}"                                                                        
Name: "MISC\FPS";                              Description: "FPS Counter v3.1 (Useful for performance testing)"                                    ; Types: full_en full extra extra_en
Name: "MISC\Trainer";                          Description: "Runtime Unity Editor v5.5.1 (Tool for making arbitrary modifications to the game, press [Pause] key to open)"; Types: full_en full extra extra_en
Name: "MISC\FullSave";                         Description: "Full Save (Save file with everything unlocked. Overwrites your current progress!)"    

[Files]
Source: "Input\_Plugins\_out\CustomLauncher_EN\*";          DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: CustomLauncher_EN; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\CustomLauncher_JP\*";          DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: CustomLauncher_JP; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\SummerInHeat_Translation_Release\*"; DestDir: "{app}\GameData"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: AT\TL; Excludes: "manifest.xml"
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Source: "Input\_Plugins\_out\BepInEx_win_x64\*";            DestDir: "{app}\GameData"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: BepInEx; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\BepInEx.ConfigurationManager\*"; DestDir: "{app}\GameData"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: BepInEx\ConfigurationManager; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\BepInEx.MessageCenter\*";      DestDir: "{app}\GameData"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: BepInEx\MessageCenter; Excludes: "manifest.xml"
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Source: "Input\_Plugins\_out\SiH_Uncensor\*";               DestDir: "{app}\GameData"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: UNC\SiH_Uncensor; Excludes: "manifest.xml"
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Source: "Input\_Plugins\_out\BepInEx.GraphicsSettings\*";   DestDir: "{app}\GameData"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: FIX\GraphicsSettings; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\SiH_Tweaks\*";                 DestDir: "{app}\GameData"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: FIX\SiH_Tweaks; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\CultureFix\*";                 DestDir: "{app}\GameData"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: FIX\CultureFix; Excludes: "manifest.xml"
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Source: "Input\_Plugins\_out\BepInEx.EnableResize\*";       DestDir: "{app}\GameData"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Feature\EnableResize; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\BepInEx.MuteInBackground\*";   DestDir: "{app}\GameData"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Feature\MuteInBackground; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\LoveMachine_for_Summer_In_Heat\*"; DestDir: "{app}\GameData"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Feature\LoveMachine; Excludes: "manifest.xml"
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Source: "Input\_Plugins\_out\RuntimeUnityEditor\*";         DestDir: "{app}\GameData"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: MISC\Trainer; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\FPSCounter\*";                 DestDir: "{app}\GameData"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: MISC\FPS; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\FullSave\*";                   DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: MISC\FullSave; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\XUnity.AutoTranslator\*";      DestDir: "{app}\GameData"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: AT; Excludes: "manifest.xml"