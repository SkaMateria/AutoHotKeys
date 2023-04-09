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
  SoundBeep(1000, 150)
}
;executes if caplock is on(is "hot") 
#HotIf on
;left mouse click will repeat while physical left mouse click is pressed ("P")
~#Lbutton:: {
  While GetKeyState("LButton", "P") {
;manually set but might test out the regular one. Forum mentioned this might be more compatible with picky games
    Click ("D")
    Sleep(20)
    Click ("U")
    Sleep(180)
  }
}
;closes AutoHotKey script when you press F10, so you can get your PRECIOUS capslock back
#HotIf

F10:: ExitApp