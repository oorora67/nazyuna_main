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
[chara_new  name="なずな" storage="chara/nazuna/nazuna_普通.png" jname="なずな"  height="1000" width="600"  ]
[voconfig sebuf=2 name="?" vostorage="amatuka/amatuka-{number}.ogg" number=1 ]
[voconfig sebuf=2 name="あまつか" vostorage="amatuka/amatuka-{number}.ogg" number=6 ]
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
[bg storage="一人部屋３（日中）.jpg" time="100"]

[cm]
[chara_show  name="なずな" left="400" top="55"]
#なずな
ねえ、[emb exp="sf.name"]起きてってば～、かわいい、かわいい[r]
幼馴染のなずなさんが起こしに来てあげてるんですよ～[p]
#&sf.name
・・・(›´ω`‹ )[p]
#なずな
早く起きないと遅刻しちゃうよ[p]
#&sf.name
・・・(›´ω`‹ )[p]
#なずな
早くしないと～・・・[p]
#&sf.name
・・・(›´ω`‹ )[p]
#なずな
い～ち[p]
#&sf.name
・・・(›´ω`‹ )[p]
#なずな
に～い[p]
#&sf.name
・・・!![p]
#なずな
さ～ん[p]
#&sf.name
っうぐぅ・・・!![p]
#なずな
あ、起きた？[l][r]
[emb exp="sf.name"]は今日まで学校でしょ[p]
#&sf.name
もう少し、優しく起こせないかな・・・[l][r]
口と鼻をつまんで起こすのはやめてくれ・・・[p]
#なずな
はいはい、さっさと起きて、じゅんび、じゅんび[p]
#&sf.name
そう言う、お前だって制服に着替えていないじゃないか[p]
#なずな
なずなは、今日から夏休みに入ってるからいいんですぅ～[p]
#&sf.name
はぁ、ずる!![p]
#なずな
じゃあ、先に降りてるから[l][r]
さっさと準備して来なさいよね[p]
[chara_hide name="なずな"]
#&sf.name
はぁ、朝からひどい目にあったな・・・[l][r]
さて、目がすっかり覚めてしまったし準備するかな[p]
#なずな
[bg storage="リビング２（日中）.jpg" time="100"]
[chara_show  name="なずな" left="400" top="55"]
あ、やっと降りてきた・・・[l][r]
ほら、朝ごはんできてるから早く席について[p]
#&sf.name
あ、ありがとう・・・[l][r]
今日もうまそうだな[p]
#なずな
当然でしょ、何年間作ってあげてると思ってるの[p]
#&sf.name
・・・、[l][r]
いただきま～す。[p]
#なずな
ほんとにもう・・・[l][r]
どうぞ、めしあがれ。[p]
#システム
目玉焼きには・・・
[cm]
[glink color="ts16" x="440" y="150" width="400" size="24" text="醤油" target="*s001_001"]
[glink color="ts16" x="440" y="230" width="400" size="24" text="塩" target="*s001_002"]
[glink color="ts16" x="440" y="310" width="400" size="24" text="ソース" target="*s001_003"]
[glink color="ts16" x="440" y="390" width="400" size="24" text="はちみつ" target="*s001_004"]
[s]

*s001_001
[eval exp="tf.chomi = '醤油'"]
@jump target="*s001_005"
*s001_002
[eval exp="tf.chomi = '塩'"]
@jump target="*s001_005"
*s001_003
[eval exp="tf.chomi = 'ソース'"]
@jump target="*s001_005"
*s001_004
[eval exp="tf.chomi = 'はちみつ'"]
@jump target="*s001_005"

*s001_005
#&sf.name
ん・・・[p]
#なずな
はい、[emb exp="tf.chomi"][l][r]
[emb exp="sf.name"]はいつも目玉焼きにはこれだもんね[p]
#&sf.name
これが一番うまい!![p]
[if exp="tf.chomi == '醤油'"]
  #なずな
  なずなも醤油かけたいから使い終わったらちょうだい[p]
  #&sf.name
  だめ～[p]
  #なずな
  ふ～ん、そんなことするんだ～[l][r]
  じゃあ、夏休みの課題手伝ってあげないからね[p]
  #&sf.name
  ごめんなさい・・・[p]
  #なずな
  分かればよろしい[p]
[elsif exp="tf.chomi == 'はちみつ'"]
  #なずな
  ほんとうに、[emb exp="sf.name"]ってかわってるよね・・・[l][r]
  目玉焼きにはちみつをかけるなんて・・・[p]
  #&sf.name
  誰になんと言われようと、これが一番うまい!![p]
[endif]
#&sf.name
ごちそうさまでした。
#なずな
お粗末様でした。[l][r]
そう言えば、時間大丈夫・・・？[p]
#&sf.name
あ、もうこんな時間だ・・・[l][r]
じゃあ、行ってきます![p]
#なずな
いってらっしゃ～い[r]
[chara_hide_all time=0 wait=false]
[skipstop]
[autostop]
~End~[p]
[vostop]

@jump target=title_jamp
[s]


#?
[quake count=2 time=600 hmax=5 vmax=10]
あの・・・、お兄ちゃん大丈夫ですか？[p]
[chara_show  name="あまつか"]
#&sf.name
突然、話しかけてきた少女がいた・・・[p]

#?
突然ごめんなさい[l][r]
#?
お兄ちゃんものすごくぐったりしていて心配になったから・・・[p]

#&sf.name
ああ、お嬢ちゃん起こしてくれてありがとう[l][r]
最近、残業ばっかりで寝不足だったから寝てしまっていたよ[p]

#?
そうなんだ・・・[l][r]
#?
あ、私は『天使ノア』お兄ちゃんは？[p]

#&sf.name
社畜の私はいつもの癖で名刺を取り出そうとスーツのポケットに[r]
手をやりかけて、名刺を渡しても困るだけだろうと思い直した。[p]
ああ、しがない社畜だよ。[p]
おじさんでもお兄ちゃんでも好きに呼んでくれ[l][r]
できれば、お兄ちゃんと呼んでくれた方がうれしいけどね。[p]

#あまつか
分かった、じゃあお兄ちゃんって呼ぶね[p]
#あまつか
でも、本当に大丈夫？[l][r]
#あまつか
お兄ちゃん、目の下の隈がすごいよ[p]

#&sf.name
心配してくれてありがとう。[l][r]
でも、大丈夫だよ もう慣れたから・・・[p]
そう言って、苦笑いする[p]

#あまつか
大丈夫そうに見えないな～[l][r]
#あまつか
そんなお兄ちゃんには、元気になるキャンディーをあげるね[p]

#&sf.name
差し出された、キャンディーはどう見ても舐めかけのものだったので[r]
驚いて、動きが止まってしまう[p]

#あまつか
あれ、いらないの・・・？[p]

#&sf.name
そう言って少女は改めてキャンディーを差し出すが、[r]
自分が差し出したキャンディーを見て何かに気づいたのか[r]
慌てて手を戻す[p]

#あまつか
あ、ごめんなさい。[l][r]
#あまつか
これは、あまつかの舐めかけだったね。[p]

#&sf.name
少女はポケットの中をゴソゴソと探り、新しいキャンディーを[r]
見つけると嬉しそうに差し出してきた[p]

#あまつか
こっちのキャンディーをあげるね[l][r]
#あまつか
あまつかとお揃いのストロベリー味だよ[p]

#&sf.name
ああ、ありがとう・・・[p]
驚きつつも差し出された新しいキャンディーを受け取る[p]

#あまつか
本当は天使が下界の人間に干渉しちゃダメなんだけど[l][r]
#あまつか
お兄ちゃんは辛そうだったから特別だよ[p]
#あまつか
でも、お兄ちゃん一つだけお願い・・・[l][r]
#あまつか
一度、目を閉じてもらえるかな？[p]

#&sf.name
そう言うと、少女は手を伸ばして私の目を閉じさせてきた[p]
[chara_hide name="あまつか"]
[bg  time="2000" method="fadeInDown"  storage="black.png" ]

#あまつか
お兄ちゃんとあまつかは、今日ここで出会っていない[l][r]
#あまつか
お兄ちゃんはきっと、すぐにあまつかのことは忘れてしまうけど[p]
#あまつか
そう遠くない未来にまた会えるから・・・[p]

#&sf.name
手が離れたので目を開けようとすると暖かい春風が吹いてきた[p]
[bg  time="2000" method="fadeInUp"  storage="park.jpg" ]
春風がやみ目を開けるとすでに少女はいなかった。[p]
急いで周囲を見渡しても、どこにも少女の姿は見つからなかったが、[l][r]
手にはストロベリー味のキャンディーが握られていた・・・[p]
[skipstop]
[autostop]
~End~[p]
[vostop]

@jump target=title_jamp

*title_jamp
[chara_hide name="あまつか"]
@layopt layer=message0 visible=false
@layopt layer=fix visible=false
@jump storage="title.ks"
[s]