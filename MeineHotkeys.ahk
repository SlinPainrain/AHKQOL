#NoEnv  ; Empfohlen f�r die Leistung und Kompatibilit�t
#Persistent  ; H�lt das Skript auch nach dem Ausf�hren von anderen Skripten aktiv
#SingleInstance Force
SendMode Input  ; Empfohlener Sendemodus f�r Tasten und Maus

ScrollLock & �::'
ScrollLock & p::?
ScrollLock & q::@
ScrollLock & n::(
ScrollLock & m::)
ScrollLock & f::=
ScrollLock & j::{	
ScrollLock & k::}
ScrollLock & �::Send, {BACKSPACE}
ScrollLock & 8::[
ScrollLock & 9::]
ScrollLock & -::_
ScrollLock & v::SendInput, {ASC 037}
ScrollLock & d::/
ScrollLock & w::+
ScrollLock & .:::
ScrollLock & e::*
ScrollLock & t::!
ScrollLock & ,::;
ScrollLock & g::<
ScrollLock & h::>
ScrollLock & u::\
ScrollLock & o::"
ScrollLock & ALT:: SendInput, ^{Backspace} ; Sende Strg + Backspace