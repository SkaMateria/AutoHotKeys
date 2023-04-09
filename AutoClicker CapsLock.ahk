;Unable to execute script if not using version 2+
#Requires AutoHotKey v2.0
;Allows the scripts to run multiple times
#SingleInstance Force
;plugins to help with mouse/key press
InstallKeybdHook
InstallMouseHook

on := False
;Turns CapsLock key into a toggle switch for the script
CapsLock:: {
  Global on := !on
;Makes a beep for when the toggle is activated (frequency, duration)
  SoundBeep, 1000 + 500 * on
}
#HotIf on
~#Lbutton:: {
  While GetKeyState("LButton", "P") {
    Click ("D")
    Sleep(20)
    Click ("U")
    Sleep(180)
  }
}
#HotIf

F10:: ExitApp