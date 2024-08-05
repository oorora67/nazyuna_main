
[cm]
[clearfix]
@layopt layer=message0 visible=false
@clearstack
@bg storage ="一人部屋３（日中）.jpg" time=100
*chara_set
;普段着
[chara_new  name="nazuna_room" storage="chara/nazuna/room/base.png" jname="なずな"  height="1000" width="465"]
;普段着_目パチ
[chara_layer name="nazuna_room" part=eye id=eye_mov_1 storage='chara/nazuna/room/eye_01_1.png' frame_image='eye_04_1,eye_02_1' frame_time='4000-6000,80,80']
;普段着_目
[chara_layer name="nazuna_room" part=eye id=eye_01_1 storage="chara/nazuna/room/eye_01_1.png" ]
[chara_layer name="nazuna_room" part=eye id=eye_01_2 storage="chara/nazuna/room/eye_01_2.png" ]
[chara_layer name="nazuna_room" part=eye id=eye_02_1 storage="chara/nazuna/room/eye_02_1.png" ]
[chara_layer name="nazuna_room" part=eye id=eye_02_2 storage="chara/nazuna/room/eye_02_2.png" ]
[chara_layer name="nazuna_room" part=eye id=eye_03_1 storage="chara/nazuna/room/eye_03_1.png" ]
[chara_layer name="nazuna_room" part=eye id=eye_03_2 storage="chara/nazuna/room/eye_03_2.png" ]
[chara_layer name="nazuna_room" part=eye id=eye_04_1 storage="chara/nazuna/room/eye_04_1.png" ]
[chara_layer name="nazuna_room" part=eye id=eye_04_2 storage="chara/nazuna/room/eye_04_2.png" ]
;普段着_眉毛
[chara_layer name="nazuna_room" part=eyebrows id=eye_b_01 storage="chara/nazuna/room/eye_b_01.png"]
[chara_layer name="nazuna_room" part=eyebrows id=eye_b_02 storage="chara/nazuna/room/eye_b_02.png"]
[chara_layer name="nazuna_room" part=eyebrows id=eye_b_03 storage="chara/nazuna/room/eye_b_03.png"]
[chara_layer name="nazuna_room" part=eyebrows id=eye_b_04 storage="chara/nazuna/room/eye_b_04.png"]
[chara_layer name="nazuna_room" part=eyebrows id=eye_b_05 storage="chara/nazuna/room/eye_b_05.png"]
[chara_layer name="nazuna_room" part=eyebrows id=eye_b_06 storage="chara/nazuna/room/eye_b_06.png"]
[chara_layer name="nazuna_room" part=eyebrows id=eye_b_07 storage="chara/nazuna/room/eye_b_07.png"]
;普段着_口
[chara_layer name="nazuna_room" part=mouth id=mouth_01 storage="chara/nazuna/room/mouth_01.png"]
[chara_layer name="nazuna_room" part=mouth id=mouth_02 storage="chara/nazuna/room/mouth_02.png"]
[chara_layer name="nazuna_room" part=mouth id=mouth_03 storage="chara/nazuna/room/mouth_03.png"]
[chara_layer name="nazuna_room" part=mouth id=mouth_04 storage="chara/nazuna/room/mouth_04.png"]
[chara_layer name="nazuna_room" part=mouth id=mouth_05 storage="chara/nazuna/room/mouth_05.png"]
[chara_layer name="nazuna_room" part=mouth id=mouth_06 storage="chara/nazuna/room/mouth_06.png"]
[chara_layer name="nazuna_room" part=mouth id=mouth_07 storage="chara/nazuna/room/mouth_07.png"]
[chara_layer name="nazuna_room" part=mouth id=mouth_08 storage="chara/nazuna/room/mouth_08.png"]
;普段着_口パク
[chara_layer name="nazuna_room" part=mouth id=mouth_mov storage="chara/nazuna/room/mouth_01.png" lip_image="mouth_05" lip_time="60" lip_se_buf="1" lip_type="voice"]
[chara_layer name="nazuna_room" part=mouth id=mouth_mov_02 storage="chara/nazuna/room/mouth_07.png" lip_image="mouth_03" lip_time="60" lip_se_buf="1" lip_type="voice"]


;着物
[chara_new  name="nazuna_kimono" storage="chara/nazuna/kimono/base.png" jname="なずな"  height="1000" width="600"]
;着物_目パチ
[chara_layer name="nazuna_kimono" part=eye id=eye_mov_1 storage='chara/nazuna/kimono/eye_01.png' frame_image='eye_02,eye_03' frame_time='4000-6000,80,80']
;着物_目
[chara_layer name="nazuna_kimono" part=eye id=eye_01 storage="chara/nazuna/kimono/eye_01.png" ]
[chara_layer name="nazuna_kimono" part=eye id=eye_02 storage="chara/nazuna/kimono/eye_02.png" ]
[chara_layer name="nazuna_kimono" part=eye id=eye_03 storage="chara/nazuna/kimono/eye_03.png" ]
;着物_眉毛
[chara_layer name="nazuna_kimono" part=eyebrows id=eye_b_01 storage="chara/nazuna/kimono/eye_b_01.png"]
[chara_layer name="nazuna_kimono" part=eyebrows id=eye_b_02 storage="chara/nazuna/kimono/eye_b_02.png"]
[chara_layer name="nazuna_kimono" part=eyebrows id=eye_b_03 storage="chara/nazuna/kimono/eye_b_03.png"]
[chara_layer name="nazuna_kimono" part=eyebrows id=eye_b_04 storage="chara/nazuna/kimono/eye_b_04.png"]
;着物_口
[chara_layer name="nazuna_kimono" part=mouth id=mouth_01 storage="chara/nazuna/kimono/mouth_01.png"]
[chara_layer name="nazuna_kimono" part=mouth id=mouth_02 storage="chara/nazuna/kimono/mouth_02.png"]
[chara_layer name="nazuna_kimono" part=mouth id=mouth_03 storage="chara/nazuna/kimono/mouth_03.png"]
[chara_layer name="nazuna_kimono" part=mouth id=mouth_04 storage="chara/nazuna/kimono/mouth_04.png"]
[chara_layer name="nazuna_kimono" part=mouth id=mouth_05 storage="chara/nazuna/kimono/mouth_05.png"]
;着物_口パク
[chara_layer name="nazuna_kimono" part=mouth id=mouth_mov storage="chara/nazuna/kimono/mouth_01.png" lip_image="mouth_03" lip_time="60"]

*start 
[chara_new  name="タイトルロゴ" storage="nazunatumi_logo.png" height="170" width="670"]
[chara_show  name="タイトルロゴ"  left="25" top="100" time="0" ]
[chara_new  name="体験版ロゴ" storage="体験版.png" height="120" width="120"  ]
[chara_show  name="体験版ロゴ" left="520" top="180" time="0" ]
[chara_new  name="なずなロゴ" storage="nazuna_logo.png" height="120" width="360"  ]

;[chara_new  name="なずな" storage="chara/nazuna/nazuna_普通.png" jname="なずな"  height="1000" width="600"  ]
[chara_part  name="nazuna_room"  mouth="mouth_01"  eyebrows="eye_b_01"  eye="eye_mov_1"]
;[chara_show  name="nazuna_kimono" left="450" top="55"]
[chara_show  name="nazuna_room" left="580" top="40" height="1500" width="698"]
[chara_show  name="なずなロゴ" left="980" top="600" time="0" ]


[glink color="ts16" x="150" y="300" width="400" size="24" text="はじめから" target="*gamestart"]
[glink color="ts16" x="150" y="370" width="400" size="24" text="つづきから" role="load"]
[glink color="ts16" x="150" y="440" width="400" size="24" text="あいことば" target="*aikotoba"]
[glink color="ts16" x="150" y="510" width="400" size="24" text="X(Twitter)" target="*url_link"]
[glink color="ts16" x="150" y="580" width="400" size="24" text="コンフィグ" role="sleepgame" storage="config.ks"]
[glink color="ts16" x="150" y="650" width="400" size="12" text="クレジット" target="*credit"]

[s]

*gamestart
;一番最初のシナリオファイルへジャンプする
[chara_hide_all time=0 wait=false]
@jump storage="scene1.ks"

*aikotoba
;一番最初のシナリオファイルへジャンプする
[chara_hide_all time=0 wait=false]
@jump storage="aikotoba.ks"


*url_link
[cm]
[web url="https://x.com/1seri_nazuna7"]
@jump target="*start"

*credit
;一番最初のシナリオファイルへジャンプする
[chara_hide_all time=0 wait=false]
@jump storage="credit.ks"