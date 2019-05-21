;# 号代表 Win 键；
;! 号代表 Alt 键；
;^ 号代表 Ctrl 键；
;+ 号代表 shift 键；

;===========================;Media Control
Scrolllock::
SoundSet +3, MASTER
;SoundSet, +3, WAVE
Return
PrintScreen::
SoundSet -3, MASTER
;SoundSet, -3,WAVE
Return

CapsLock & PrintScreen::Media_Prev
CapsLock & Scrolllock::Media_Next

Pause::Send {Media_Play_Pause}
return
;===========================;Replace CapsLock
;^CapsLock::CapsLock
;Return
CapsLock::Send {Esc}


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

;===========================;模拟鼠标滑轮上下滑动
CapsLock & m::
MouseClick,Wheelup,,,3,0,D,R
return

CapsLock & n::
MouseClick,WheelDown,,,3,0,D,R
return


;===========================;open cmder
^!t::
run, cmder
return

CapsLock & f::  ; 谷歌翻译
Run http://translate.google.com/
return


CapsLock & s:: ; 快速谷歌搜索
Send ^c 
Run https://scholar.google.com/
return


CapsLock & b::
Run https://www.bilibili.com/
return


;===========================;input comand
::\\m:: ;输入我的邮箱
Send iamjohnrain@163.com 
return

::\\pip:: ; 输入pip清华源
Send -i https://pypi.tuna.tsinghua.edu.cn/simple
return

::\\sr1:: ; 输入服务器IP
Send 172.18.219.166
return

::\\sr2:: ; 输入服务器IP
Send 172.18.217.24
return

::\\sr3:: ; 输入服务器IP
Send 172.18.218.121
return


^+c::  ; 复制文件的路径，
; null= 
send ^c
sleep,200
clipboard=%clipboard% ;%null%
tooltip,%clipboard%
sleep,500
tooltip,
return





