#Requires AutoHotkey >=2.0

;Keyboard replace &uuml ++
>!a::Send "{U+00E4}"
+>!a::Send "{U+00C4}"
>!o::Send "{U+00F6}"
+>!o::Send "{U+00D6}"
>!u::Send "{U+00FC}"
+>!u::Send "{U+00DC}"
>!s::Send "{U+00DF}"

>!c::Send "{U+00B0}C"
>!e::Send "{U+20ac}"

>!p::Send "{PrintScreen}"

;Minimize RDP Window ctrl + alt + break
^Esc:: Send "{Alt}{CtrlBreak}"

;text replace
:*:#lp::live long and prosper
:*:#td::Technical debt

;https://www.branah.com/unicode-converter
;¯\_(ツ)_/¯
:*:#dk::{U+00af}{U+005c}{U+005f}{U+0028}{U+30c4}{U+0029}{U+005f}{U+002f}{U+00af}
;(∩｀-´)⊃━☆ﾟ.*･｡ﾟ
:*:#wiz::{U+0028}{U+2229}{U+ff40}{U+002d}{U+00b4}{U+0029}{U+2283}{U+2501}{U+2606}{U+ff9f}{U+002e}{U+002a}{U+ff65}{U+ff61}{U+ff9f}
