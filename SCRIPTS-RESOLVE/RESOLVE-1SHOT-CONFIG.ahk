/*
This AHK script acts as a configuration file for the various one-shot scripts associated with Resolve. The problem we are resolving (ha!) with this is that, while there is a pretty standard Resolve UI, depending on your screen size, the various buttons and places to click can be in different locations. The definitions here are an attempt to create modular system, so that you can define the locations of your system's (one or more), and have that get fed to the one-shot scripts.

In order to create these variable defintions, there is another grabbing script. Here are the steps one should take to update the definitions in this file:

- Enable the RESOLVE-HOTKEYS.ahk script in BKB/MASTER-SETTINGS.ahk & reload BKB/MASTER-SCRIPT.ahk
- Launch Resolve on the system you need to create definitions for.
- Open this file for editing.
- In the RESOLVE-HOTKEY.ahk script, there is a command (HYPER-F21) that will launch a function that will grab the relavent info for the button/location/command you are grabbing.
- Prior to running the grabber, you need to do a few things (this is on a per location/command basis - meaning you do this for each individual command you are defining.):
    - Below is a master listing of the variables that we need to define.
    - Find the variable name for the button/location/command you wish to grab.
    - Select it and copy it to the Clipboard.
    - Alt-Tab back into Resolve and position the cursor over the button/location/command you are grabbing.
    - Invoke the GRAB hotkey (should be HYPER-F21). That will give you a few prompts and then grab the location of the button you are grabbing and copy that info to the Clipboard.
    - The GRAB process should activate the editing window of this file after you click to grab.
    - Search the file to find the section of this file that matches the SystemLocation where you are grabbing and then you can paste the Clipboard info into this file there.
    - The grabbed info should be formatted correctly with all the info that needs to be captured.
    - Once it is pasted into place, save this file.
- Once you have grabbed the button/location/commands you want, you should be able to use them straight away. You should not need to reload MASTER-SCRIPT.ahk or RESOLVE-HOTKEYS.ahk to use them.
- If you are on a system and you have not grabbed the coordinates needed for a given command, the script *should* prompt you to grab that info and open this file for you to paste that data in.


MASTER LIST OF VARIABLES
========================

*/

global Location_currentSystemLocation :=

EnvGet, Settings_rootFolder, BKB_ROOT ; reading the Environment variable of the root folder path
global iniFile := Settings_rootFolder . "\settings.ini" ; the main settings file used by most of the buttonpusherKB scripts
IniRead, Location_currentSystemLocation, %iniFile%, Location, currentSystemLocation

global versionFile := Settings_rootFolder . "version.ini" ; the file which holds the current version of buttonpusherKB
global version ; creating a global variable for the version info
FileRead, version, %versionFile% ; reading the version from versionFile

if ( Location_currentSystemLocation = 2 ) {
; SYSTEM SETTINGS PANEL
; Loc 2 systemSettingsPanel
systemSettingsPanelLocX = 419
systemSettingsPanelLocY = 48
; Loc 2 systemSettingsMemoryAndGPU
systemSettingsMemoryAndGPULocX = 168
systemSettingsMemoryAndGPULocY = 83
; Loc 2 systemSettingsMediaStorage
systemSettingsMediaStorageLocX = 178
systemSettingsMediaStorageLocY = 117
; Loc 2 systemSettingsDecodeOptions
systemSettingsDecodeOptionsLocX = 162
systemSettingsDecodeOptionsLocY = 147
; Loc 2 systemSettingsVideoAndAudioIO
systemSettingsVideoAndAudioIOLocX = 162
systemSettingsVideoAndAudioIOLocY = 179
; Loc 2 systemSettingsVideoPlugins
systemSettingsVideoPluginsLocX = 175
systemSettingsVideoPluginsLocY = 208
; Loc 2 systemSettingsAudioPlugins
systemSettingsAudioPluginsLocX = 171
systemSettingsAudioPluginsLocY = 237
; Loc 2 systemSettingsControlPanels
systemSettingsControlPanelsLocX = 173
systemSettingsControlPanelsLocY = 270
; Loc 2 systemSettingsGeneral
systemSettingsGeneralLocX = 183
systemSettingsGeneralLocY = 302
; Loc 2 systemSettingsInternetAccounts
systemSettingsInternetAccountsLocX = 173
systemSettingsInternetAccountsLocY = 331
; Loc 2 systemSettingsAdvanced
systemSettingsAdvancedLocX = 178
systemSettingsAdvancedLocY = 364
; Loc 2 systemSettingsUser
systemSettingsUserLocX = 518
systemSettingsUserLocY = 47
; Loc 2 systemSettingsUserUISettings
systemSettingsUserUISettingsLocX = 177
systemSettingsUserUISettingsLocY = 83
; Loc 2 systemSettingsUserProjectSaveAndLoad
systemSettingsUserProjectSaveAndLoadLocX = 179
systemSettingsUserProjectSaveAndLoadLocY = 114
; Loc 2 systemSettingsUserEditing
systemSettingsUserEditingLocX = 184
systemSettingsUserEditingLocY = 145
; Loc 2 systemSettingsUserColor
systemSettingsUserColorLocX = 189
systemSettingsUserColorLocY = 176
; Loc 2 systemSettingsUserFairlight
systemSettingsUserFairlightLocX = 183
systemSettingsUserFairlightLocY = 209
; Loc 2 systemSettingsUserPlaybackSettings
systemSettingsUserPlaybackSettingsLocX = 173
systemSettingsUserPlaybackSettingsLocY = 237
; Loc 2 systemSettingsUserControlPanels
systemSettingsUserControlPanelsLocX = 178
systemSettingsUserControlPanelsLocY = 269
; Loc 2 systemSettingsUserMetadata
systemSettingsUserMetadataLocX = 183
systemSettingsUserMetadataLocY = 304

; PROJECT SETTINGS PANEL
; Loc 2 projectSettings
projectSettingsLocX = 3416
projectSettingsLocY = 1425
; Loc 2 projectSettingsPresets
projectSettingsPresetsLocX = 144
projectSettingsPresetsLocY = 46
; Loc 2 projectSettingsMasterSettings
projectSettingsMasterSettingsLocX = 131
projectSettingsMasterSettingsLocY = 78
; Loc 2 projectSettingsImageScaling
projectSettingsImageScalingLocX = 139
projectSettingsImageScalingLocY = 107
; Loc 2 projectSettingsColorManagement
projectSettingsColorManagementLocX = 125
projectSettingsColorManagementLocY = 137
; Loc 2 projectSettingsGeneralOptions
projectSettingsGeneralOptionsLocX = 124
projectSettingsGeneralOptionsLocY = 169
; Loc 2 projectSettingsCameraRaw
projectSettingsCameraRawLocX = 142
projectSettingsCameraRawLocY = 203
; Loc 2 projectSettingsCaptureAndPlayback
projectSettingsCaptureAndPlaybackLocX = 125
projectSettingsCaptureAndPlaybackLocY = 228
; Loc 2 projectSettingsSubtitles
projectSettingsSubtitlesLocX = 143
projectSettingsSubtitlesLocY = 261
; Loc 2 projectSettingsFairlight
projectSettingsFairlightLocX = 150
projectSettingsFairlightLocY = 291

; COLOR PANEL
; Loc 2 colorClipsToggle
colorClipsToggleLocX = 3073
colorClipsToggleLocY = 69
; Loc 2 colorGalleryToggle
colorGalleryToggleLocX = 78
colorGalleryToggleLocY = 71
; Loc 2 colorLightboxToggle
colorLightboxToggleLocX = 3388
colorLightboxToggleLocY = 69
; Loc 2 colorLutsToggle
colorLutsToggleLocX = 157
colorLutsToggleLocY = 65
; Loc 2 colorMediaPoolToggle
colorMediaPoolToggleLocX = 258
colorMediaPoolToggleLocY = 68
; Loc 2 colorNodesToggle
colorNodesToggleLocX = 3190
colorNodesToggleLocY = 63
; Loc 2 colorNodesFitToWindow
; Loc 2 colorNodesCleanup
colorNodesCleanupLocX = 3438
colorNodesCleanupLocY = 124
; Loc 2 colorOpenfxToggle
colorOpenfxToggleLocX = 3287
colorOpenfxToggleLocY = 67
; Loc 2 colorStillsToggle
colorStillsToggleLocX = 25
colorStillsToggleLocY = 99
; Loc 2 colorTimelineToggle
colorTimelineToggleLocX = 2989
colorTimelineToggleLocY = 66
; Loc 2 colorNodesClipDisplay
colorNodesClipDisplayLocX = 2887
colorNodesClipDisplayLocY = 100
; Loc 2 colorNodesTimelineDisplay
colorNodesTimelineDisplayLocX = 2906
colorNodesTimelineDisplayLocY = 100
; Loc 2 colorInfoPalette
colorInfoPaletteLocX = 3419
colorInfoPaletteLocY = 954
; Loc 2 colorWaveformPalette
colorWaveformPaletteLocX = 3361
colorWaveformPaletteLocY = 951
; Loc 2 colorKeyframePalette
colorKeyframePaletteLocX = 3299
colorKeyframePaletteLocY = 955
; Loc 2 colorKeyframePaletteSetToColor
colorKeyframePaletteSetToColorLocX = 3244
colorKeyframePaletteSetToColorLocY = 993
; Loc 2 colorKeyframePaletteSetToSizing
colorKeyframePaletteSetToSizingLocX = 3244
colorKeyframePaletteSetToSizingLocY = 993
; Loc 2 colorKeyframePaletteSetToAll
colorKeyframePaletteSetToAllLocX = 3244
colorKeyframePaletteSetToAllLocY = 993
; Loc 2 colorGalleryStillsListView
colorGalleryStillsListViewLocX = 978
colorGalleryStillsListViewLocY = 100
; Loc 2 colorGalleryStillsThumbView
colorGalleryStillsThumbViewLocX = 951
colorGalleryStillsThumbViewLocY = 100
; Loc 2 colorCurves
colorCurvesLocX = 1505
colorCurvesLocY = 953
; Loc 2 colorCurvesCustom
colorCurvesCustomLocX = 1884
colorCurvesCustomLocY = 994
; Loc 2 colorCurvesResetAll
colorCurvesResetAllLocX = 2532
colorCurvesResetAllLocY = 994
; Loc 2 colorCurvesLink
colorCurvesLinkLocX = 2424
colorCurvesLinkLocY = 1031
; Loc 2 colorCurvesBlue
colorCurvesBlueLocX = 2529
colorCurvesBlueLocY = 1032
; Loc 2 colorCurvesRed
colorCurvesRedLocX = 2471
colorCurvesRedLocY = 1030
; Loc 2 colorCurvesGreen
colorCurvesGreenLocX = 2501
colorCurvesGreenLocY = 1030
; Loc 2 colorCurvesLuminance
colorCurvesLuminanceLocX = 2449
colorCurvesLuminanceLocY = 1031
; Loc 2 colorCurvesChannelReset
colorCurvesChannelResetLocX = 2571
colorCurvesChannelResetLocY = 1032
; Loc 2 colorCurvesHueVsHue
colorCurvesHueVsHueLocX = 1906
colorCurvesHueVsHueLocY = 996
; Loc 2 colorCurvesHueVsSat
colorCurvesHueVsSatLocX = 1922
colorCurvesHueVsSatLocY = 996
; Loc 2 colorCurvesHueVsLum
colorCurvesHueVsLumLocX = 1942
colorCurvesHueVsLumLocY = 995
; Loc 2 colorCurvesLumVsSat
colorCurvesLumVsSatLocX = 1960
colorCurvesLumVsSatLocY = 996
; Loc 2 colorCurvesSatVsSat
colorCurvesSatVsSatLocX = 1979
colorCurvesSatVsSatLocY = 995
; Loc 2 colorCurvesSatVsLum
colorCurvesSatVsLumLocX = 1998
colorCurvesSatVsLumLocY = 994
; Loc 2 colorCurvesHueRed
colorCurvesHueRedLocX = 1358
colorCurvesHueRedLocY = 1376
; Loc 2 colorCurvesHueYellow
colorCurvesHueYellowLocX = 1387
colorCurvesHueYellowLocY = 1376
; Loc 2 colorCurvesHueGreen
colorCurvesHueGreenLocX = 1417
colorCurvesHueGreenLocY = 1376
; Loc 2 colorCurvesHueCyan
colorCurvesHueCyanLocX = 1446
colorCurvesHueCyanLocY = 1378
; Loc 2 colorCurvesHueBlue
colorCurvesHueBlueLocX = 1476
colorCurvesHueBlueLocY = 1379
; Loc 2 colorCurvesHueMagenta
colorCurvesHueMagentaLocX = 1504
colorCurvesHueMagentaLocY = 1378
; Loc 2 colorCurvesSplineToggle
colorCurvesSplineToggleLocX = 1327
colorCurvesSplineToggleLocY = 1376
; Loc 2 colorCurvesLumBlack
colorCurvesLumBlackLocX = 1358
colorCurvesLumBlackLocY = 1377
; Loc 2 colorCurvesLumWhite
colorCurvesLumWhiteLocX = 1386
colorCurvesLumWhiteLocY = 1378

; EDIT PANEL
; Loc 2 editShrinkLeftPanelsToggle
editShrinkLeftPanelsToggleLocX = 37
editShrinkLeftPanelsToggleLocY = 63
; Loc 2 editMediaPoolToggle
editMediaPoolToggleLocX = 132
editMediaPoolToggleLocY = 66
; Loc 2 editEffectsLibraryToggle
editEffectsLibraryToggleLocX = 269
editEffectsLibraryToggleLocY = 67
; Loc 2 editEditIndexToggle
editEditIndexToggleLocX = 387
editEditIndexToggleLocY = 66
; Loc 2 editSoundLibraryToggle
editSoundLibraryToggleLocX = 515
editSoundLibraryToggleLocY = 71
; Loc 2 editShrinkRightPanelsToggle
editShrinkRightPanelsToggleLocX = 3416
editShrinkRightPanelsToggleLocY = 69
; Loc 2 editMixerToggle
editMixerToggleLocX = 3138
editMixerToggleLocY = 68
; Loc 2 editMetadataToggle
editMetadataToggleLocX = 3240
editMetadataToggleLocY = 68
; Loc 2 editInspectorToggle
editInspectorToggleLocX = 3348
editInspectorToggleLocY = 70


}
