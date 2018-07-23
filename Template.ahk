;+はShift
;^はCtrl
;!はAlt
;sc079は変換キー
;sc07Bは無変換キー

;;;;;;;;;;;;;;;;;;;;;;;
;カーソル操作
;;;;;;;;;;;;;;;;;;;;;;;

;無変換キー と jkli でカーソルキー移動

sc07B & j:: Send, {Blind}{Left}
sc07B & k:: Send, {Blind}{Down}
sc07B & l:: Send, {Blind}{Right}
sc07B & i:: Send, {Blind}{Up}

;無変換キー と uでHome oでEnd
sc07B & u:: Send, {Blind}{Home}
sc07B & o:: Send, {Blind}{End}

;無変換キー と yでPageUp hでPageDown
sc07B & y:: Send, {Blind}{PgUp}
sc07B & h:: Send, {Blind}{PgDn}

;無変換キー と a で 一行選択
sc07B & a:: Send, {Home}+{End}

;;;;;;;;;;;;;;;;;;;;;;;
;Enter,BackSpace,Delete
;;;;;;;;;;;;;;;;;;;;;;;
sc07B & n:: Send, {Blind}{BS}
sc07B & m:: Send, {Blind}{Del}
sc07B & Space:: Send, {Blind}{Enter}
sc079 & Space:: Send, {Blind}{Enter}

;;;;;;;;;;;;;;;;;;;;;;;
;スクロール
;;;;;;;;;;;;;;;;;;;;;;;

;無変換キー と e でスクロールアップ d でダウン
sc07B & e:: Send, {Blind}{WheelUp}
sc07B & d:: Send, {Blind}{WheelDown}

;;;;;;;;;;;;;;;;;;;;;;;
;選択文字列をGoogle検索
;;;;;;;;;;;;;;;;;;;;;;;

;文字列選択状態で、無変換キー + f
sc07B & f::
Backup := ClipboardAll
Clipboard =
Send,^c
ClipWait,1
Run,https://www.google.co.jp/search?q=%Clipboard%
Clipboard := Backup
Return

;;;;;;;;;;;;;;;;;;;;;;;
;Google Chrome ショートカット
;;;;;;;;;;;;;;;;;;;;;;;

;無変換キーと b で Chrome のブックマークバーにフォーカス移動
sc07B & b:: Send, +!b

;;;;;;;;;;;;;;;;;;;;;;;
;無変換、変換キーの単独機能保持
;;;;;;;;;;;;;;;;;;;;;;;

; 無変換キー単独は無変換キーとして機能させる
sc07B:: Send {Blind}{sc07B}
; 変換キー単独は変換キーとして機能させる
sc079:: Send {Blind}{sc079}

;End of file

