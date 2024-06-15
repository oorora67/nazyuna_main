*start

[cm]
[clearfix]
[start_keyconfig]

[chara_config ptext="chara_name_area"]
[bg storage="park.jpg" time="100"]
[add_theme_button ]
@layopt layer=message0 visible=true

*001_001
[cm]
; テキストボックス
[edit initial="あいことば" name="tf.aikotoba" top="250" left="440" width="400" height="50" maxchars="30"]
[change_textbox bg_image="../others/plugin/theme_kopanda_16/image/system/dot.png" bg_repeat="repeat" bg_color="0xA2CC66" border_color="0x5C4949" font_color="0x5C4949" border_radius="10" font_weight="bold"]
; 決定ボタン
[glink color="ts16" x="440" y="350" width="400" size="24" text="決定" target="*001_002" cm=false]
#システム
あいことばを入力してください
[s]
;===============================================================================

; 未入力チェック

;===============================================================================
*001_002
; 入力内容の確定
[commit]

[iscript]

  tf.aikotoba_ck = sf.del_space(tf.aikotoba); // 空白をすべて削除してチェック用の変数に代入

[endscript]

; 未入力チェック　※変数名の前にかならず「&」をつけてね
[check_blank var_name="&tf.aikotoba_ck" target_ng="*001_001" target_ok="*001_003" alert_message="あいことばを入力してください"]
[s]
*001_003
[cm]

入力された文字は「[emb exp="tf.aikotoba"]」です。[p]

[switch exp=tf.aikotoba]
[case is="あいことば１"]
1だ。[p]
@jump target="*001_001"
[case is="あいことば２"]
2だ。[p]
@jump target="*001_001"
[case]
1でも2でもない。[p]
@jump storage="end.ks"
[endswitch]

;一番最初のシナリオファイルへジャンプする
