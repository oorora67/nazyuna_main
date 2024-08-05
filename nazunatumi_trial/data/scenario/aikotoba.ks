*start

[cm]
[clearfix]
[start_keyconfig]

[chara_config ptext="chara_name_area"]
[bg storage="okumono_wagara211.png" time="100"]
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
[iscript]
    async function sha256(text){
        const uint8  = new TextEncoder().encode(text)
        const digest = await crypto.subtle.digest('SHA-256', uint8)
        return Array.from(new Uint8Array(digest)).map(v => v.toString(16).padStart(2,'0')).join('')
    }
    sha256(tf.aikotoba).then(hash => tf.aikotoba_hash = String(hash))
[endscript]
現在あいことばは実装中です。[p]
@layopt layer=message0 visible=false
@layopt layer=fix visible=false
@jump storage="title.ks"
[s]
入力:[emb exp="tf.aikotoba"][r]
hash:[emb exp="tf.aikotoba_hash"][r]
[iscript]
    hash_list = [
      '9daab422010c526a6ca2caedcf2e0d20e613cc03c6ed642f4044924a976335e6', 
      '52f38535ed1942a2c6239feef88ede7c1dcaac32bd91c25b9aba2b1f902fdd43',
    ];
    if(hash_list.includes(tf.aikotoba_hash)){
      tf.aikotoba_hash_ck = "OK"
    }else{
      tf.aikotoba_hash_ck = "NG"
    }
[endscript]
ck:[emb exp="tf.aikotoba_hash_ck"][p]
[switch exp=tf.aikotoba_hash_ck]
[case is="OK"]
あいことばを認証しました。[p]
[iscript]
TG.kag.ftag.startTag("jump",{storage:"extra/"+tf.aikotoba_hash+".ks"});
[endscript stop=true]
[case is="NG"]
あいことばが違います。[p]
@jump target="*001_001"
[endswitch]

;一番最初のシナリオファイルへジャンプする
