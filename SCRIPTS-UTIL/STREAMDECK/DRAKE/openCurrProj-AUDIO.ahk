SetWorkingDir %A_ScriptDir%
#Include %A_ScriptDir%\DRAKE-FUNCTIONS.ahk
projectSubfolder = AUDIO
f_class := whichWindowType()
if f_class in #32770,ExploreWClass,CabinetWClass
    {
    InstantExplorer(projectSubfolder,1)
    }
    else openFCXE(projectSubfolder,1)

Exiting(projectSubfolder,1)
