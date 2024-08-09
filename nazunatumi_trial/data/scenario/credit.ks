*start

[cm]
[clearfix]
[bg storage="okumono_wagara211.png" time="100"]
[html top=100 left=300]
<p>クレジット/ライセンス</p>
<p>OKUMONO-背景フリー素材　https://sozaino.site</p>
<p>みんちりえ（ https://min-chi.material.jp/ ）</p>
<p>フリーBGM DOVA-SYNDROME</p>
[endhtml]
[glink color="ts16" x="430" y="650" width="400" size="24" text="タイトルへ" target="*title"]
[glink color="ts16" x="1070" y="665" width="200" size="12" text="セーブデータ削除" target="*save_data_del"]
[s]

*title
;一番最初のシナリオファイルへジャンプする
[chara_hide_all time=0 wait=false]
@jump storage="title.ks"
[s]

*save_data_del
[dialog type=confirm text="セーブデータをすべて削除しますか？" target="*delete" target_cancel="*delete_cancel"]
[s]

*delete
[iscript]
localStorage.removeItem(TG.config.projectID + "_tyrano_data")
[endscript]
[wait time=500]
[dialog type=alert text="セーブデータを削除しました。" storage="title.ks"]
[s]

*delete_cancel
[wait time=500]
[dialog type=alert text="セーブデータの削除をキャンセルしました。" storage="title.ks"]
[s]
