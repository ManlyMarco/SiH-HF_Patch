![io hf patch preview](https://github.com/ManlyMarco/IO-HF_Patch/assets/39247311/dedd3aca-b8f2-40b3-acd0-c85e9939387b)
# HF Patch for Summer in Heat
An unofficial patch for [Summer in Heat](https://miconisomi.xii.jp/summer/) (夏のサカり) by miconisomi. It fully translates and uncensors the game, and includes other useful mods.

Read the [full HF Patch manual](https://gist.github.com/ManlyMarco/31b78470b8e190686c7ed9686c237e3f) to learn more about what it is, what it does, how to use it, and how to solve common issues.

HF Patch does not contain the game, only mods. You have to buy the game separately. You can buy the game [on DLsite](https://www.dlsite.com/maniax/work/=/product_id/RJ365188.html) or [on DMM](https://www.dmm.co.jp/dc/doujin/-/detail/=/cid=d_220306/). Both versions are essentially identical. This patch was tested on the v1.00_DLsite version of the game but should work on future versions as well.

You can support development of HF Patch and many of the included plugins through my Patreon page: https://www.patreon.com/ManlyMarco

## Download
Check the [Releases](https://github.com/ManlyMarco/SiH-HF_Patch/releases) page for download links. The latest release is at the top. To get mail updates for each new release you can watch this repositiory (top right).

The download contains the entire HF Patch which can be used offline. You can use qBittorrent or a similar up-to-date torrent client to open magnet links.

## How to install
1. Extract the game (use a simple path like `D:\Games\SummerInHeat` without any Japanese characters, otherwise mods and/or the game might have issues).
2. Download the latest HF Patch from the [releases page](https://github.com/ManlyMarco/SiH-HF_Patch/releases) to any directory. Do not download it to the game directory!
3. Once all parts are downloaded, run the patch .exe file.
4. You have to point the patch to where the game is installed. To be specific, it has to be the directory with the `『夏のサカり』起動ランチャー.exe` file and `GameData` folder in it. You should find it after you extract the game files that you downloaded from the online store.
5. You can customize the install but for beginners it's recommended to use the default settings.
6. Wait until it's done (file verification can take a long time) and enjoy the game!

*WARNING: If the game is updated in the future it might be necessary to turn off the "Fix common issues" option when installing the patch, or it may break the game. If the game is broken by this you will need to extract a fresh copy and install the patch with this option turned off.*

*Note: If you want to run the game under Wine/Proton (Linux, SteamOS, macOS, etc.), read [this](https://github.com/Mantas-2155X/illusion-wine-guide) and [this](https://docs.bepinex.dev/articles/advanced/proton_wine.html).*

## What mods are included?
You can see a list of all included plugins and links to their websites and authors [here](https://github.com/ManlyMarco/SVS-HF_Patch/blob/master/Plugin%20Readme.md). You can see what content mods are included after installing the patch by running KKManager (installed to the game directory) and navigating to the zipmods tab.

## Discussion and help
If you need any help, visit the [Koikatsu discord server](https://discord.gg/hevygx6) and ask in the [#summer-in-heat channel](https://discord.com/channels/447114928785063977/1334670734848426054). Asking there is the fastest way to get help, you can even search it for your issue to see if someone already answered it. There are also mod and card sharing channels on the server!

## Important notes, please read
Here are answers to some of the most commonly asked questions, please check them first before asking for help!

### General HF Patch
- HF Patch does not contain the full game, paid expansions or any other pirated content. The full game needs to be already installed for the patch to work.
- If you have installed a previous HF Patch or separate mods it is recommended to remove ALL mods when prompted. This will prevent any potential mod conflicts or outdated mods causing problems.
- You can run this patch as many times as you want and nothing will break. All mods are optional to install, and most can be removed by running the patch again.
- You can use this patch to fix many broken game/mod installs.
- It's recommended to install all content mods if you plan to download character cards - they are required by many cards and scenes.
- Older versions of BepInEx will be automatically upgraded, and most botched installations should get fixed by running this patch.
- Please leave the modders some positive feedback or help them in some other way!
- There is no warranty on this patch or on any of the included mods. You are installing this patch at your own risk. The base game and by extension this patch are not suitable for minors. If you are under 18 years old you can not use this patch. The base game and this patch contain only characters of age 18 or higher. The creator of this patch is not responsible for creations of its users and prohibits any unlawful use of this software.

### Specific to the SVS patch
- If you install English translations, you have to start the game through the English launcher. If you use the Japanese launcher then the game will start in Japanese language.
- If you want to skip straight to a specific story scene you can do it through the debug mode. In title screen go to Settings, open Plugin settings on the right, and set any key for the "Open debug menu" setting. Go back to the title screen, click the configured hotkey and go wild. Warning: Back up your save files if you care about your progress!
- This patch works with both DMM and DLsite versions of the game (they are basically identical).
- If you want to make your own mods, check https://docs.bepinex.dev and source code of some existing plugins, for example https://github.com/ManlyMarco/SummerInHeat_Plugins.

## How to build
At least Visual Studio 2017 is needed for the helper library and latest unicode Inno Setup compiler is needed for the patch itself. All necessary mods have to be placed inside correct subfolders of the Input directory to compile. Because of massive size, they are not included here.

You can support development of HF Patch and many of the included plugins through my Patreon page: https://www.patreon.com/ManlyMarco
