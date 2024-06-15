
[cm]

@clearstack
@bg storage ="一人部屋３（日中）.jpg" time=100
@wait time = 200
*start 
[chara_new  name="なずな" storage="chara/nazuna/nazuna_普通.png" jname="なずな"  height="1000" width="600"  ]
[chara_show  name="なずな" left="650" top="55"]
[glink color="ts16" x="150" y="300" width="400" size="24" text="はじめから" target="*gamestart"]
[glink color="ts16" x="150" y="370" width="400" size="24" text="つづきから" role="load"]
[glink color="ts16" x="150" y="440" width="400" size="24" text="あいことば" target="*aikotoba"]
[glink color="ts16" x="150" y="510" width="400" size="24" text="X(Twitter)" target="*url_link"]
[glink color="ts16" x="150" y="580" width="400" size="24" text="コンフィグ" role="sleepgame" storage="config.ks"]
[s]

*gamestart
;一番最初のシナリオファイルへジャンプする
[chara_hide_all time=0 wait=false]
@jump storage="scene1.ks"

*aikotoba
;一番最初のシナリオファイルへジャンプする
@jump storage="aikotoba.ks"


*url_link
[cm]
[web url="https://x.com/1seri_nazuna7"]
@jump target="*start"
