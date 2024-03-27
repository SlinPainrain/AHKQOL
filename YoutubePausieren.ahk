; Hotkey definieren
ScrollLock & Enter::
    ; Überprüfen, ob Chrome läuft
    if WinExist("ahk_exe chrome.exe")
    {
        ; Aktives Fenster und Tab speichern
        WinGet, ActiveWindowID, ID, A
        WinGetActiveTitle, ActiveTabTitle
        
        ; Durch Chrome-Fenster und -Tabs navigieren, bis YouTube gefunden wird
        WinGet, WindowList, List, ahk_exe chrome.exe
        Loop, %WindowList%
        {
            WindowID := WindowList%A_Index%
            WinGetTitle, WindowTitle, ahk_id %WindowID%
            if (InStr(WindowTitle, " - YouTube"))
            {
                ; YouTube-Fenster aktivieren
                WinActivate, ahk_id %WindowID%
                
                ; Kurze Pause, um sicherzustellen, dass das Fenster aktiv ist
                Sleep, 100
                
                ; YouTube pausieren (Leertaste senden)
                Send, {Space}
                
                ; Kurze Pause, um sicherzustellen, dass die Aktion abgeschlossen ist
                Sleep, 100
                
                ; Zurück zum vorherigen aktiven Fenster und Tab wechseln
                WinActivate, ahk_id %ActiveWindowID%
                WinActivate, %ActiveTabTitle%
                
                break
            }
        }
    }
return