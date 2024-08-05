*start
[cm]
[clearfix]
[start_keyconfig]
[bg storage="okumono_wagara211.png" time="100"]
[add_theme_button ]
@layopt layer=message0 visible=true
[chara_config ptext="chara_name_area"]
;このゲームで登場するキャラクターを宣言

;amatuka
;[chara_new  name="なずな" storage="chara/nazuna/nazuna_普段着_デフォルト（微笑）.png" jname="なずな"  height="1000" width="465"]
;[chara_face name="なずな" face="普段着_楽" storage="chara/nazuna/nazuna_普段着_楽.png"]


;[voconfig sebuf=2 name="?" vostorage="amatuka/amatuka-{number}.ogg" number=1 ]
[voconfig sebuf=2 name="nazuna_room" vostorage="nazuna/nazuna_{number}.mp3" number=1 ]
[vostart]
*001_001
[cm]
[edit initial="ゲソの民" name="sf.name" top="250" left="440" width="400" height="50" maxchars="30"]
[change_textbox bg_image="../others/plugin/theme_kopanda_16/image/system/dot.png" bg_repeat="repeat" bg_color="0xA2CC66" border_color="0x5C4949" font_color="0x5C4949" border_radius="10" font_weight="bold"]
[glink color="ts16" x="440" y="350" width="400" size="24" text="決定" target="*001_002" cm=false]
あなたの名前を入力してください
[s]
*001_002
[commit]
[iscript]
  sf.name_ck = sf.del_space(sf.name); // 空白をすべて削除してチェック用の変数に代入
[endscript]
; 未入力チェック　※変数名の前にかならず「&」をつけてね
[check_blank var_name="&sf.name_ck" target_ng="*001_001" target_ok="*001_003" alert_message="名前を入力してください"]
[s]
*001_003
[cm]
名前は「[emb exp="sf.name"]」で問題ないですか？[r]
[link target=*001_004]【１】はい[endlink][r]
[link target=*001_001]【２】いいえ[endlink][r][s]
*001_004
*s001
[bg storage="一人部屋３（日中）.jpg" time="100"]

[cm]
[chara_part  name="nazuna_room"  eye=eye_mov_1 mouth=mouth_mov]
[chara_show  name="nazuna_room" left="400" top="55" height="1000" width="465"]

[fadeinbgm storage="新しい朝、風に乗って.mp3" time="3000" volume="30" ]
[fadeinse storage="SE/スズメが鳴く朝.mp3" volume="10" time="1000"]
#nazuna_room
ねえ、[emb exp="sf.name"]起きてってば～、かわいい、かわいい[r]
[quake count=2 time=350 hmax=10]
幼馴染のなずなさんが起こしに来てあげてるんですよ～
[quake count=2 time=350 hmax=10]
[p]

#&sf.name
・・・(›´ω`‹ )[p]
#nazuna_room
早く起きないと遅刻しちゃうよ[p]
#&sf.name
・・・(›´ω`‹ )[p]
#nazuna_room
早くしないと～・・・[p]
[quake count=1 time=500 vmax=5]
#&sf.name
・・・(›´ω`‹ )[p]
[chara_part  name="nazuna_room"  eye="eye_04_1" eyebrows="eye_b_07"  mouth="mouth_mov"]
#nazuna_room
い～ち[p]
#&sf.name
・・・(›´ω`‹ )[p]
#nazuna_room
に～い[p]
#&sf.name
・・・!![p]
#nazuna_room
さ～ん[p]
#&sf.name
っうぐぅ・・・!!
[quake count=1 time=200 vmax=10]
[p]
[fadeoutse time="100"]
#nazuna_room
あ、起きた？[l][r]
[chara_part  name="nazuna_room"  eye="eye_mov_1" mouth="mouth_mov"]
#nazuna_room
[emb exp="sf.name"]は今日まで学校でしょ[p]
#&sf.name
もう少し、優しく起こせないかな・・・[l][r]
口と鼻をつまんで起こすのはやめてくれ・・・[p]
#nazuna_room
はいはい、さっさと起きて、じゅんび、じゅんび[p]
#&sf.name
そう言う、お前だって制服に着替えていないじゃないか[p]
#nazuna_room
なずなは、今日から夏休みに入ってるからいいんですぅ～[p]
#&sf.name
はぁ、ずる!![p]
#nazuna_room
じゃあ、先に降りてるからね[l][r]
#nazuna_room
さっさと準備して来なさいよね[p]
[chara_hide name="nazuna_room"]
#&sf.name
はぁ、朝からひどい目に あったな・・・[l][r]
さて、目がすっかり覚めてしまったし準備するかな[p]
[fadeoutbgm time="2000"]
*s002
[fadeinbgm storage="ensolarado.mp3" time="1000" volume="30" ]
[bg storage="リビング２（日中）.jpg" time="1500" wait=true]
[chara_part  name="nazuna_room"  eye="eye_mov_1" eyebrows="eye_b_01"  mouth="mouth_mov_02"]
[chara_show  name="nazuna_room" left="400" top="55"]
#nazuna_room
あ、やっと降りてきた・・・[l][r]
#nazuna_room
ほら、朝ごはんできてるから早く席について[p]
#&sf.name
あ、ありがとう・・・[l][r]
今日もうまそうだな[p]
[chara_part  name="nazuna_room"  eye="eye_02_1" eyebrows="eye_b_01"  mouth="mouth_mov"]
#nazuna_room
当然でしょ、何年間作ってあげてると思ってるの[p]
#&sf.name
・・・、[l][r]
いただきま～す。[p]
[chara_part  name="nazuna_room"  eye="eye_02_1" eyebrows="eye_b_05"  mouth="mouth_mov_02"]
#nazuna_room
ほんとにもう・・・[l][r]
[chara_part  name="nazuna_room"  eye="eye_mov_1" eyebrows="eye_b_01"  mouth="mouth_mov"]
#nazuna_room
どうぞ、めしあがれ。[p]
#システム
目玉焼きには・・・
[cm]
[glink color="ts16" x="440" y="150" width="400" size="24" text="醤油" target="*s002_001"]
[glink color="ts16" x="440" y="230" width="400" size="24" text="塩" target="*s002_002"]
[glink color="ts16" x="440" y="310" width="400" size="24" text="ソース" target="*s002_003"]
[glink color="ts16" x="440" y="390" width="400" size="24" text="はちみつ" target="*s002_004"]
[s]

*s002_001
[eval exp="tf.chomi = '醤油'"]
@jump target="*s002_005"
*s002_002
[eval exp="tf.chomi = '塩'"]
@jump target="*s002_005"
*s002_003
[eval exp="tf.chomi = 'ソース'"]
@jump target="*s002_005"
*s002_004
[eval exp="tf.chomi = 'はちみつ'"]
@jump target="*s002_005"

*s002_005
#&sf.name
ん・・・[p]
#nazuna_room
[switch exp=tf.chomi]
[case is="醤油"]
[voconfig sebuf=2 name="nazuna_room" vostorage="nazuna/nazuna_{number}.mp3" number=18 ]
#nazuna_room
はい、醤油[l][r]
[case is="塩"]
[voconfig sebuf=2 name="nazuna_room" vostorage="nazuna/nazuna_{number}.mp3" number=19 ]
#nazuna_room
はい、塩[l][r]
[case is="ソース"]
[voconfig sebuf=2 name="nazuna_room" vostorage="nazuna/nazuna_{number}.mp3" number=20 ]
#nazuna_room
はい、ソース[l][r]
[case is="はちみつ"]
[voconfig sebuf=2 name="nazuna_room" vostorage="nazuna/nazuna_{number}.mp3" number=21]
#nazuna_room
はい、はちみつ[l][r]
[endswitch]
[voconfig sebuf=2 name="nazuna_room" vostorage="nazuna/nazuna_{number}.mp3" number=22 ]
#nazuna_room
[emb exp="sf.name"]はいつも目玉焼きにはこれだもんね[p]
#&sf.name
これが一番うまい!![p]
[if exp="tf.chomi == '醤油'"]
[voconfig sebuf=2 name="nazuna_room" vostorage="nazuna/nazuna_{number}.mp3" number=23 ]
  #nazuna_room
  なずなも醤油かけたいから使い終わったらちょうだい[p]
  #&sf.name
  だめ～[p]
  [chara_part  name="nazuna_room"  eye="eye_mov_1" eyebrows="eye_b_01"  mouth="mouth_mov_02"]
  #nazuna_room
  ふ～ん、そんなことするんだ～[l][r]
  #nazuna_room
  じゃあ、夏休みの課題手伝ってあげないからね[p]
  #&sf.name
  ごめんなさい・・・[p]
  [chara_part  name="nazuna_room"  eye="eye_mov_1" eyebrows="eye_b_01"  mouth="mouth_mov"]
  #nazuna_room
  分かればよろしい[p]
[elsif exp="tf.chomi == 'はちみつ'"]
[voconfig sebuf=2 name="nazuna_room" vostorage="nazuna/nazuna_{number}.mp3" number=27 ]
[chara_part  name="nazuna_room"  eye="eye_mov_1" eyebrows="eye_b_01"  mouth="mouth_mov_02"]
  #nazuna_room
  ほんとうに、[emb exp="sf.name"]ってかわってるよね・・・[l][r]
  #nazuna_room
  目玉焼きにはちみつをかけるなんて・・・[l][r]
  #nazuna_room
  普通は、醤油でしょ[p]
  #&sf.name
  誰になんと言われようと、これが一番うまい!![p]
[endif]
#&sf.name
ごちそうさまでした。[p]
[voconfig sebuf=2 name="nazuna_room" vostorage="nazuna/nazuna_{number}.mp3" number=30 ]
[chara_part  name="nazuna_room"  eye="eye_mov_1" eyebrows="eye_b_01"  mouth="mouth_mov"]
#nazuna_room
お粗末様でした。[l][r]
[chara_part  name="nazuna_room"  eye="eye_mov_1" eyebrows="eye_b_01"  mouth="mouth_mov_02"]
#nazuna_room
そう言えば、時間大丈夫・・・？[p]
#&sf.name
あ、もうこんな時間だ・・・[l][r]
じゃあ、行ってきます![p]
[chara_part  name="nazuna_room"  eye="eye_mov_1" eyebrows="eye_b_01"  mouth="mouth_mov"]
#nazuna_room
いってらっしゃ～い[l][r]

[skipstop]
[autostop]
~End~[p]
[vostop]
[chara_hide_all time=2000 wait=true]
@jump target=title_jamp
[s]


*title_jamp
[chara_hide name="nazuna_room"]
@layopt layer=message0 visible=false
@layopt layer=fix visible=false
@jump storage="title.ks"
[s]