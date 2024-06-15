;--------------------------------------------------------------------------------
; ティラノスクリプト テーマプラグイン theme_kopanda_21
; 作者:こ・ぱんだ
; https://kopacurve.blog.fc2.com/
;--------------------------------------------------------------------------------

[iscript]

mp.font_color    = mp.font_color    || "0x443836";
mp.name_color    = mp.name_color    || "0xCCB5A3";
mp.frame_opacity = mp.frame_opacity || "255";
mp.font_color2   = mp.font_color2   || "0x443836";
mp.glyph         = mp.glyph         || "off";

if(TG.config.alreadyReadTextColor != "default") {
	TG.config.alreadyReadTextColor = mp.font_color2;
}

[endscript]

; 名前部分のメッセージレイヤ削除
[free name="chara_name_area" layer="message0"]

; メッセージウィンドウの設定
[position layer="message0" width="1280" height="180" top="540" left="0"]
[position layer="message0" frame="../others/plugin/theme_kopanda_21/image/frame_message.png" margint="40" marginl="140" marginr="140" opacity="&mp.frame_opacity" page="fore"]

; 名前枠の設定
[ptext name="chara_name_area" layer="message0" color="&mp.name_color" size="24" x="120" y="540" width="600" align="left"]
[chara_config ptext="chara_name_area"]

; デフォルトのフォントカラー指定
[font color="&mp.font_color"]
[deffont color="&mp.font_color"]

; クリック待ちグリフの設定（on設定時のみ有効）
[if exp="mp.glyph == 'on'"]
[glyph line="../../../data/others/plugin/theme_kopanda_21/image/system/nextpage.png"]
[endif]

;=================================================================================

; 機能ボタンを表示するマクロ

;=================================================================================

; 機能ボタンを表示したいシーンで[add_theme_button]と記述してください（消去は[clearfix name="role_button"]）
[macro name="add_theme_button"]

; 歯車ボタンは不要なので非表示に
[hidemenubutton]

; Q.Save
[button name="role_button" role="quicksave" graphic="../others/plugin/theme_kopanda_21/image/button/qsave.png" enterimg="../others/plugin/theme_kopanda_21/image/button/qsave2.png" x="102" y="688"]

; Q.Load
[button name="role_button" role="quickload" graphic="../others/plugin/theme_kopanda_21/image/button/qload.png" enterimg="../others/plugin/theme_kopanda_21/image/button/qload2.png" x="200" y="688"]

; Save
[button name="role_button" role="save" graphic="../others/plugin/theme_kopanda_21/image/button/save.png" enterimg="../others/plugin/theme_kopanda_21/image/button/save2.png" x="298" y="688"]

; Load
[button name="role_button" role="load" graphic="../others/plugin/theme_kopanda_21/image/button/load.png" enterimg="../others/plugin/theme_kopanda_21/image/button/load2.png" x="396" y="688"]

; Auto
[button name="role_button" role="auto" graphic="../others/plugin/theme_kopanda_21/image/button/auto.png" enterimg="../others/plugin/theme_kopanda_21/image/button/auto2.png" x="494" y="688"]

; Skip
[button name="role_button" role="skip" graphic="../others/plugin/theme_kopanda_21/image/button/skip.png" enterimg="../others/plugin/theme_kopanda_21/image/button/skip2.png" x="592" y="688"]

; Backlog
[button name="role_button" role="backlog" graphic="../others/plugin/theme_kopanda_21/image/button/log.png" enterimg="../others/plugin/theme_kopanda_21/image/button/log2.png" x="690" y="688"]

; Screen
[button name="role_button" role="fullscreen" graphic="../others/plugin/theme_kopanda_21/image/button/screen.png" enterimg="../others/plugin/theme_kopanda_21/image/button/screen2.png" x="788" y="688"]

; Config
[button name="role_button" role="sleepgame" graphic="../others/plugin/theme_kopanda_21/image/button/sleep.png" enterimg="../others/plugin/theme_kopanda_21/image/button/sleep2.png" storage="../others/plugin/theme_kopanda_21/config.ks" x="886" y="688"]

; Menu
[button name="role_button" role="menu" graphic="../others/plugin/theme_kopanda_21/image/button/menu.png" enterimg="../others/plugin/theme_kopanda_21/image/button/menu2.png" x="984" y="688"]

; Title
[button name="role_button" role="title" graphic="../others/plugin/theme_kopanda_21/image/button/title.png" enterimg="../others/plugin/theme_kopanda_21/image/button/title2.png" x="1082" y="688"]

; Close
[button name="role_button" role="window" graphic="../others/plugin/theme_kopanda_21/image/button/close.png" enterimg="../others/plugin/theme_kopanda_21/image/button/close2.png" x="1238" y="550"]

[endmacro]

;=================================================================================

; システムで利用するHTML,CSSの設定

;=================================================================================
; セーブ画面
[sysview type="save" storage="./data/others/plugin/theme_kopanda_21/html/save.html"]

; ロード画面
[sysview type="load" storage="./data/others/plugin/theme_kopanda_21/html/load.html"]

; バックログ画面
[sysview type="backlog" storage="./data/others/plugin/theme_kopanda_21/html/backlog.html"]

; メニュー画面
[sysview type="menu" storage="./data/others/plugin/theme_kopanda_21/html/menu.html"]

; CSS
[loadcss file="./data/others/plugin/theme_kopanda_21/ts21.css"]

; メニュー画面からコンフィグを呼び出すための設定ファイル（未使用）
;[loadjs storage="plugin/theme_kopanda_21/setting.js"]

;=================================================================================

; テストメッセージ出力プラグインの読み込み

;=================================================================================
[loadjs storage="plugin/theme_kopanda_21/testMessagePlus/gMessageTester.js"]
[loadcss file="./data/others/plugin/theme_kopanda_21/testMessagePlus/style.css"]

[macro name="test_message_start"]
[eval exp="gMessageTester.create()"]
[endmacro]

[macro name="test_message_end"]
[eval exp="gMessageTester.destroy()"]
[endmacro]

[macro name="test_message_reset"]
[eval exp="gMessageTester.currentTextNumber=0;gMessageTester.next(true)"]
[endmacro]


[return]
