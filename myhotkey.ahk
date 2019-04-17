;===========================;Media Control
Scrolllock::
SoundSet +3, MASTER
;SoundSet, +3, WAVE
Return
PrintScreen::
SoundSet -3, MASTER
;SoundSet, -3,WAVE
Return
Pause::Send {Media_Play_Pause}
return
;===========================;Replace CapsLock
^CapsLock::CapsLock
Return
CapsLock::Send {Esc}
return
;===========================;U = PageDown
CapsLock & u::
if getkeystate("shift") = 0
Send, {PgUp}
else
Send, +{PgUp}
return
;===========================;I = Home
CapsLock & i::
if getkeystate("shift") = 0
Send, {Home}
else
Send, +{Home}
return
;===========================;O = End
CapsLock & o::
if getkeystate("shift") = 0
Send, {End}
else
Send, +{End}
return
;===========================;P = PageDown
CapsLock & p::
if getkeystate("shift") = 0
Send, {PgDn}
else
Send, +{PgDn}
return
;===========================;H = Left
CapsLock & h::
if getkeystate("shift") = 0
Send, {Left}
else
Send, +{Left}
return
;===========================;J = Down
CapsLock & j::
if getkeystate("shift") = 0
Send, {Down}
else
Send, +{Down}
return
;===========================;K = UP
CapsLock & k::
if getkeystate("shift") = 0
Send, {Up}
else
Send, +{Up}
return
;===========================;L = Right
CapsLock & l::
if getkeystate("shift") = 0
Send, {Right}
else
Send, +{Right}
return