; Hotkey definieren
ScrollLock & Enter::
    ; Überprüfen, ob Chrome läuft
    if WinExist("ahk_exe chrome.exe")
    {
        ; Aktives Fenster speichern
        WinGetActiveTitle, CurrentActiveWindow
        
        ; Chrome-Fenster aktivieren
        WinActivate, ahk_exe chrome.exe
        
        ; Kurze Pause, um sicherzustellen, dass Chrome aktiv ist
        Sleep, 100
        
        ; YouTube pausieren (Leertaste senden)
        Send, {Space}
        
        ; Kurze Pause, um sicherzustellen, dass die Aktion abgeschlossen ist
        Sleep, 100
        
        ; Zurück zum vorherigen aktiven Fenster wechseln
        WinActivate, %CurrentActiveWindow%
    }
return