; 2023/11/25 @ko10panda edit

;===============================================================================

; コンフィグ モード画面作成

;===============================================================================

[layopt layer="message0" visible="false"]
[clearfix]
[stop_keyconfig]
[free_layermode time="100" wait="true"]
[reset_camera time="100" wait="true"]
[hidemenubutton]

[iscript]

$(".layer_camera").empty();
$("#bgmovie").remove();

TG.config.autoRecordLabel = "true";

/*
 * コンフィグ内のみで使用する変数
 *
 * tf.img_path				    共通：画像類のパス
 * tf.btn_off		          共通：ボタン画像のファイル名（透明なので見えません）
 *
 * tf.gauge_posx				  ゲージ：ボタンを配置するX座標
 * tf.gauge_posy				  ゲージ：ボタンを配置するY座標
 * tf.gauge_img_width			ゲージ：ボタンの幅
 * tf.gauge_img_height		ゲージ：ボタンの高さ
 * tf.gauge_img           ゲージ：画像ファイル名
 *
 * tf.mute_posx           ミュート：ボタンのX座標
 * tf.mute_posy           ミュート：ボタンのY座標
 * tf.mute_img_width      ミュート：ボタンの幅
 * tf.mute_img_height     ミュート：ボタンの高さ
 * tf.mute_img            ミュート：画像ファイル名
 *
 * tf.skip_posx           未読スキップ：ボタンのX座標
 * tf.skip_posy           未読スキップ：ボタンのY座標
 * tf.skip_img_width      未読スキップ：ボタンの幅
 * tf.skip_img_height     未読スキップ：ボタンの高さ
 * tf.skip_img_on         未読スキップ：Onの画像ファイル名
 * tf.skip_img_off        未読スキップ：Offの画像ファイル名
 *
 * tf.screen_posx         画面サイズ：ボタンのX座標
 * tf.screen_posy         画面サイズ：ボタンのY座標
 * tf.screen_img_width    画面サイズ：ボタンの幅
 * tf.screen_img_height   画面サイズ：ボタンの高さ
 * tf.screen_img_window   画像サイズ：ウィンドウの画像ファイル名
 * tf.screen_img_full     画像サイズ：フルスクリーンの画像ファイル名
 *
 * tf.index_num_bgm		    BGM音量：インデックス
 * tf.index_num_se			  SE音量：インデックス
 * tf.index_num_ch			  テキスト速度：インデックス
 * tf.index_num_auto		  オートウェイト：インデックス
 *
 * tf.current_bgm_vol		  BGM音量：現在のBGM音量
 * tf.current_se_vol		  SE音量：現在のSE音量
 * tf.current_ch_speed		テキスト速度：現在のテキスト速度
 * tf.current_auto_speed	オートウェイト：現在のオートウェイト
 *
 * tf.text_skip				    未読スキップ：現在の未読スキップの状態
 * tf.screen_size			    画面サイズ：現在の画面サイズ
 *
 * f.prev_vol_list			  BGM、SE：BGMとSEの音量とインデックスを保存する配列
 *
*/

tf.img_path 		      = '../others/plugin/theme_kopanda_21/image/config/';
tf.btn_off 	          = tf.img_path + 'c_btn.gif';

tf.gauge_posx	 		    = [1096, 340, 412, 484, 556, 628, 700, 772, 844, 916, 988];
tf.gauge_posy 		    = [190, 270, 350, 430];
tf.gauge_img_width 		= 48;
tf.gauge_img_height 	= 52;
tf.gauge_img  	      = tf.img_path + 'gauge_active.png';

tf.mute_posx          = 1096;
tf.mute_posy          = [190, 270];
tf.mute_img_width     = 48;
tf.mute_img_height    = 52;
tf.mute_img           = tf.img_path + 'mute_active.png';

tf.skip_posx          = [340, 484];
tf.skip_posy          = 510;
tf.skip_img_width     = 120;
tf.skip_img_height    = 50;
tf.skip_img_on        = tf.img_path + 'skip_on_active.png';
tf.skip_img_off       = tf.img_path + 'skip_off_active.png';

tf.screen_posx        = [772, 916];
tf.screen_posy        = 510;
tf.screen_img_width   = 120;
tf.screen_img_height  = 50;
tf.screen_img_window  = tf.img_path + 'window_active.png';
tf.screen_img_full    = tf.img_path + 'full_active.png';

tf.index_num_bgm;
tf.index_num_se;
tf.index_num_ch;
tf.index_num_auto;
tf.current_bgm_vol    = parseInt(TG.config.defaultBgmVolume);
tf.current_se_vol     = parseInt(TG.config.defaultSeVolume);
tf.current_ch_speed   = parseInt(TG.config.chSpeed);
tf.current_auto_speed = parseInt(TG.config.autoSpeed);

tf.text_skip ="ON";
	if(TG.config.unReadTextSkip != "true") {
		tf.text_skip ="OFF";
	}

tf.screen_size = (function() {
	if ((document.FullscreenElement !== undefined && document.FullscreenElement !== null) ||
    	(document.webkitFullscreenElement !== undefined && document.webkitFullscreenElement !== null) ||
      	(document.msFullscreenElement !== undefined && document.msFullscreenElement !== null)) {
    	return 'full';
 	} else {
  		return 'window';
	}
})();

switch(tf.current_bgm_vol) {
	case   0: tf.index_num_bgm =  0; break;
	case  10: tf.index_num_bgm =  1; break;
	case  20: tf.index_num_bgm =  2; break;
	case  30: tf.index_num_bgm =  3; break;
	case  40: tf.index_num_bgm =  4; break;
	case  50: tf.index_num_bgm =  5; break;
	case  60: tf.index_num_bgm =  6; break;
	case  70: tf.index_num_bgm =  7; break;
	case  80: tf.index_num_bgm =  8; break;
	case  90: tf.index_num_bgm =  9; break;
	case 100: tf.index_num_bgm = 10; break;

	default: break;
};

switch(tf.current_se_vol) {
	case   0: tf.index_num_se =  0; break;
	case  10: tf.index_num_se =  1; break;
	case  20: tf.index_num_se =  2; break;
	case  30: tf.index_num_se =  3; break;
	case  40: tf.index_num_se =  4; break;
	case  50: tf.index_num_se =  5; break;
	case  60: tf.index_num_se =  6; break;
	case  70: tf.index_num_se =  7; break;
	case  80: tf.index_num_se =  8; break;
	case  90: tf.index_num_se =  9; break;
	case 100: tf.index_num_se = 10; break;

	default: break;
};

switch(tf.current_ch_speed) {
	case 100: tf.index_num_ch =  0; break;
	case  80: tf.index_num_ch =  1; break;
	case  50: tf.index_num_ch =  2; break;
	case  40: tf.index_num_ch =  3; break;
	case  30: tf.index_num_ch =  4; break;
	case  25: tf.index_num_ch =  5; break;
	case  20: tf.index_num_ch =  6; break;
	case  11: tf.index_num_ch =  7; break;
	case   8: tf.index_num_ch =  8; break;
	case   5: tf.index_num_ch =  9; break;

	default: break;
};

switch(tf.current_auto_speed) {
	case 5000: tf.index_num_auto =  0; break;
	case 4500: tf.index_num_auto =  1; break;
	case 4000: tf.index_num_auto =  2; break;
	case 3500: tf.index_num_auto =  3; break;
	case 3000: tf.index_num_auto =  4; break;
	case 2500: tf.index_num_auto =  5; break;
	case 2000: tf.index_num_auto =  6; break;
	case 1300: tf.index_num_auto =  7; break;
	case  800: tf.index_num_auto =  8; break;
	case  500: tf.index_num_auto =  9; break;

	default: break;
};

// ミュート解除時はここからミュート前の音量設定を引っ張ってくる
if(typeof f.prev_vol_list === 'undefined') {
	f.prev_vol_list = [tf.current_bgm_vol, tf.config_num_bgm, tf.current_se_vol, tf.index_num_se];
}

[endscript]

[cm]

[bg storage="&tf.img_path +'config_bg.png'" time="10"]
[button fix="true" graphic="&tf.img_path + 'back.png'" enterimg="&tf.img_path + 'back2.png'" target="*backtitle" x="1192" y="24"]

[jump target="*config_page"]

*config_page
[clearstack]
;-------------------------------------------------------------------------------
; BGM音量
;-------------------------------------------------------------------------------
[button name="bgmvol,bgmvol_10"  fix="true" target="*vol_bgm_change" graphic="&tf.btn_off" width="&tf.gauge_img_width" height="&tf.gauge_img_height" x="&tf.gauge_posx[1]"  y="&tf.gauge_posy[0]" exp="tf.current_bgm_vol =  10; tf.index_num_bgm =  1"]
[button name="bgmvol,bgmvol_20"  fix="true" target="*vol_bgm_change" graphic="&tf.btn_off" width="&tf.gauge_img_width" height="&tf.gauge_img_height" x="&tf.gauge_posx[2]"  y="&tf.gauge_posy[0]" exp="tf.current_bgm_vol =  20; tf.index_num_bgm =  2"]
[button name="bgmvol,bgmvol_30"  fix="true" target="*vol_bgm_change" graphic="&tf.btn_off" width="&tf.gauge_img_width" height="&tf.gauge_img_height" x="&tf.gauge_posx[3]"  y="&tf.gauge_posy[0]" exp="tf.current_bgm_vol =  30; tf.index_num_bgm =  3"]
[button name="bgmvol,bgmvol_40"  fix="true" target="*vol_bgm_change" graphic="&tf.btn_off" width="&tf.gauge_img_width" height="&tf.gauge_img_height" x="&tf.gauge_posx[4]"  y="&tf.gauge_posy[0]" exp="tf.current_bgm_vol =  40; tf.index_num_bgm =  4"]
[button name="bgmvol,bgmvol_50"  fix="true" target="*vol_bgm_change" graphic="&tf.btn_off" width="&tf.gauge_img_width" height="&tf.gauge_img_height" x="&tf.gauge_posx[5]"  y="&tf.gauge_posy[0]" exp="tf.current_bgm_vol =  50; tf.index_num_bgm =  5"]
[button name="bgmvol,bgmvol_60"  fix="true" target="*vol_bgm_change" graphic="&tf.btn_off" width="&tf.gauge_img_width" height="&tf.gauge_img_height" x="&tf.gauge_posx[6]"  y="&tf.gauge_posy[0]" exp="tf.current_bgm_vol =  60; tf.index_num_bgm =  6"]
[button name="bgmvol,bgmvol_70"  fix="true" target="*vol_bgm_change" graphic="&tf.btn_off" width="&tf.gauge_img_width" height="&tf.gauge_img_height" x="&tf.gauge_posx[7]"  y="&tf.gauge_posy[0]" exp="tf.current_bgm_vol =  70; tf.index_num_bgm =  7"]
[button name="bgmvol,bgmvol_80"  fix="true" target="*vol_bgm_change" graphic="&tf.btn_off" width="&tf.gauge_img_width" height="&tf.gauge_img_height" x="&tf.gauge_posx[8]"  y="&tf.gauge_posy[0]" exp="tf.current_bgm_vol =  80; tf.index_num_bgm =  8"]
[button name="bgmvol,bgmvol_90"  fix="true" target="*vol_bgm_change" graphic="&tf.btn_off" width="&tf.gauge_img_width" height="&tf.gauge_img_height" x="&tf.gauge_posx[9]"  y="&tf.gauge_posy[0]" exp="tf.current_bgm_vol =  90; tf.index_num_bgm =  9"]
[button name="bgmvol,bgmvol_100" fix="true" target="*vol_bgm_change" graphic="&tf.btn_off" width="&tf.gauge_img_width" height="&tf.gauge_img_height" x="&tf.gauge_posx[10]" y="&tf.gauge_posy[0]" exp="tf.current_bgm_vol = 100; tf.index_num_bgm = 10"]

; BGMミュート
[button name="bgmvol,bgmvol_0"   fix="true" target="*vol_bgm_mute" graphic="&tf.btn_off" width="&tf.mute_img_width" height="&tf.mute_img_height" x="&tf.mute_posx" y="&tf.mute_posy[0]"]

;-------------------------------------------------------------------------------
; SE音量
;-------------------------------------------------------------------------------
[button name="sevol,sevol_10"  fix="true" target="*vol_se_change" graphic="&tf.btn_off" width="&tf.gauge_img_width" height="&tf.gauge_img_height" x="&tf.gauge_posx[1]"  y="&tf.gauge_posy[1]" exp="tf.current_se_vol =  10; tf.index_num_se =  1"]
[button name="sevol,sevol_20"  fix="true" target="*vol_se_change" graphic="&tf.btn_off" width="&tf.gauge_img_width" height="&tf.gauge_img_height" x="&tf.gauge_posx[2]"  y="&tf.gauge_posy[1]" exp="tf.current_se_vol =  20; tf.index_num_se =  2"]
[button name="sevol,sevol_30"  fix="true" target="*vol_se_change" graphic="&tf.btn_off" width="&tf.gauge_img_width" height="&tf.gauge_img_height" x="&tf.gauge_posx[3]"  y="&tf.gauge_posy[1]" exp="tf.current_se_vol =  30; tf.index_num_se =  3"]
[button name="sevol,sevol_40"  fix="true" target="*vol_se_change" graphic="&tf.btn_off" width="&tf.gauge_img_width" height="&tf.gauge_img_height" x="&tf.gauge_posx[4]"  y="&tf.gauge_posy[1]" exp="tf.current_se_vol =  40; tf.index_num_se =  4"]
[button name="sevol,sevol_50"  fix="true" target="*vol_se_change" graphic="&tf.btn_off" width="&tf.gauge_img_width" height="&tf.gauge_img_height" x="&tf.gauge_posx[5]"  y="&tf.gauge_posy[1]" exp="tf.current_se_vol =  50; tf.index_num_se =  5"]
[button name="sevol,sevol_60"  fix="true" target="*vol_se_change" graphic="&tf.btn_off" width="&tf.gauge_img_width" height="&tf.gauge_img_height" x="&tf.gauge_posx[6]"  y="&tf.gauge_posy[1]" exp="tf.current_se_vol =  60; tf.index_num_se =  6"]
[button name="sevol,sevol_70"  fix="true" target="*vol_se_change" graphic="&tf.btn_off" width="&tf.gauge_img_width" height="&tf.gauge_img_height" x="&tf.gauge_posx[7]"  y="&tf.gauge_posy[1]" exp="tf.current_se_vol =  70; tf.index_num_se =  7"]
[button name="sevol,sevol_80"  fix="true" target="*vol_se_change" graphic="&tf.btn_off" width="&tf.gauge_img_width" height="&tf.gauge_img_height" x="&tf.gauge_posx[8]"  y="&tf.gauge_posy[1]" exp="tf.current_se_vol =  80; tf.index_num_se =  8"]
[button name="sevol,sevol_90"  fix="true" target="*vol_se_change" graphic="&tf.btn_off" width="&tf.gauge_img_width" height="&tf.gauge_img_height" x="&tf.gauge_posx[9]"  y="&tf.gauge_posy[1]" exp="tf.current_se_vol =  90; tf.index_num_se =  9"]
[button name="sevol,sevol_100" fix="true" target="*vol_se_change" graphic="&tf.btn_off" width="&tf.gauge_img_width" height="&tf.gauge_img_height" x="&tf.gauge_posx[10]" y="&tf.gauge_posy[1]" exp="tf.current_se_vol = 100; tf.index_num_se = 10"]

; SEミュート
[button name="sevol,sevol_0"   fix="true" target="*vol_se_mute" graphic="&tf.btn_off" width="&tf.mute_img_width" height="&tf.mute_img_height" x="&tf.mute_posx" y="&tf.mute_posy[1]"]

;-------------------------------------------------------------------------------
; テキスト速度
;-------------------------------------------------------------------------------
[button name="ch,ch_100" fix="true" target="*ch_speed_change" graphic="&tf.btn_off" width="&tf.gauge_img_width" height="&tf.gauge_img_height" x="&tf.gauge_posx[1]"  y="&tf.gauge_posy[2]" exp="tf.set_ch_speed =100; tf.index_num_ch = 0"]
[button name="ch,ch_80"  fix="true" target="*ch_speed_change" graphic="&tf.btn_off" width="&tf.gauge_img_width" height="&tf.gauge_img_height" x="&tf.gauge_posx[2]"  y="&tf.gauge_posy[2]" exp="tf.set_ch_speed = 80; tf.index_num_ch = 1"]
[button name="ch,ch_50"  fix="true" target="*ch_speed_change" graphic="&tf.btn_off" width="&tf.gauge_img_width" height="&tf.gauge_img_height" x="&tf.gauge_posx[3]"  y="&tf.gauge_posy[2]" exp="tf.set_ch_speed = 50; tf.index_num_ch = 2"]
[button name="ch,ch_40"  fix="true" target="*ch_speed_change" graphic="&tf.btn_off" width="&tf.gauge_img_width" height="&tf.gauge_img_height" x="&tf.gauge_posx[4]"  y="&tf.gauge_posy[2]" exp="tf.set_ch_speed = 40; tf.index_num_ch = 3"]
[button name="ch,ch_30"  fix="true" target="*ch_speed_change" graphic="&tf.btn_off" width="&tf.gauge_img_width" height="&tf.gauge_img_height" x="&tf.gauge_posx[5]"  y="&tf.gauge_posy[2]" exp="tf.set_ch_speed = 30; tf.index_num_ch = 4"]
[button name="ch,ch_25"  fix="true" target="*ch_speed_change" graphic="&tf.btn_off" width="&tf.gauge_img_width" height="&tf.gauge_img_height" x="&tf.gauge_posx[6]"  y="&tf.gauge_posy[2]" exp="tf.set_ch_speed = 25; tf.index_num_ch = 5"]
[button name="ch,ch_20"  fix="true" target="*ch_speed_change" graphic="&tf.btn_off" width="&tf.gauge_img_width" height="&tf.gauge_img_height" x="&tf.gauge_posx[7]"  y="&tf.gauge_posy[2]" exp="tf.set_ch_speed = 20; tf.index_num_ch = 6"]
[button name="ch,ch_11"  fix="true" target="*ch_speed_change" graphic="&tf.btn_off" width="&tf.gauge_img_width" height="&tf.gauge_img_height" x="&tf.gauge_posx[8]"  y="&tf.gauge_posy[2]" exp="tf.set_ch_speed = 11; tf.index_num_ch = 7"]
[button name="ch,ch_8"   fix="true" target="*ch_speed_change" graphic="&tf.btn_off" width="&tf.gauge_img_width" height="&tf.gauge_img_height" x="&tf.gauge_posx[9]"  y="&tf.gauge_posy[2]" exp="tf.set_ch_speed =  8; tf.index_num_ch = 8"]
[button name="ch,ch_5"   fix="true" target="*ch_speed_change" graphic="&tf.btn_off" width="&tf.gauge_img_width" height="&tf.gauge_img_height" x="&tf.gauge_posx[10]" y="&tf.gauge_posy[2]" exp="tf.set_ch_speed =  5; tf.index_num_ch = 9"]

;-------------------------------------------------------------------------------
; オートウェイト
;-------------------------------------------------------------------------------
[button name="auto,auto_5000" fix="true" target="*auto_speed_change" graphic="&tf.btn_off" width="&tf.gauge_img_width" height="&tf.gauge_img_height" x="&tf.gauge_posx[1]"  y="&tf.gauge_posy[3]" exp="tf.set_auto_speed = 5000; tf.index_num_auto = 0"]
[button name="auto,auto_4500" fix="true" target="*auto_speed_change" graphic="&tf.btn_off" width="&tf.gauge_img_width" height="&tf.gauge_img_height" x="&tf.gauge_posx[2]"  y="&tf.gauge_posy[3]" exp="tf.set_auto_speed = 4500; tf.index_num_auto = 1"]
[button name="auto,auto_4000" fix="true" target="*auto_speed_change" graphic="&tf.btn_off" width="&tf.gauge_img_width" height="&tf.gauge_img_height" x="&tf.gauge_posx[3]"  y="&tf.gauge_posy[3]" exp="tf.set_auto_speed = 4000; tf.index_num_auto = 2"]
[button name="auto,auto_3500" fix="true" target="*auto_speed_change" graphic="&tf.btn_off" width="&tf.gauge_img_width" height="&tf.gauge_img_height" x="&tf.gauge_posx[4]"  y="&tf.gauge_posy[3]" exp="tf.set_auto_speed = 3500; tf.index_num_auto = 3"]
[button name="auto,auto_3000" fix="true" target="*auto_speed_change" graphic="&tf.btn_off" width="&tf.gauge_img_width" height="&tf.gauge_img_height" x="&tf.gauge_posx[5]"  y="&tf.gauge_posy[3]" exp="tf.set_auto_speed = 3000; tf.index_num_auto = 4"]
[button name="auto,auto_2500" fix="true" target="*auto_speed_change" graphic="&tf.btn_off" width="&tf.gauge_img_width" height="&tf.gauge_img_height" x="&tf.gauge_posx[6]"  y="&tf.gauge_posy[3]" exp="tf.set_auto_speed = 2500; tf.index_num_auto = 5"]
[button name="auto,auto_2000" fix="true" target="*auto_speed_change" graphic="&tf.btn_off" width="&tf.gauge_img_width" height="&tf.gauge_img_height" x="&tf.gauge_posx[7]"  y="&tf.gauge_posy[3]" exp="tf.set_auto_speed = 2000; tf.index_num_auto = 6"]
[button name="auto,auto_1300" fix="true" target="*auto_speed_change" graphic="&tf.btn_off" width="&tf.gauge_img_width" height="&tf.gauge_img_height" x="&tf.gauge_posx[8]"  y="&tf.gauge_posy[3]" exp="tf.set_auto_speed = 1300; tf.index_num_auto = 7"]
[button name="auto,auto_800"  fix="true" target="*auto_speed_change" graphic="&tf.btn_off" width="&tf.gauge_img_width" height="&tf.gauge_img_height" x="&tf.gauge_posx[9]"  y="&tf.gauge_posy[3]" exp="tf.set_auto_speed =  800; tf.index_num_auto = 8"]
[button name="auto,auto_500"  fix="true" target="*auto_speed_change" graphic="&tf.btn_off" width="&tf.gauge_img_width" height="&tf.gauge_img_height" x="&tf.gauge_posx[10]" y="&tf.gauge_posy[3]" exp="tf.set_auto_speed =  500; tf.index_num_auto = 9"]

;-------------------------------------------------------------------------------
; 未読スキップ
;-------------------------------------------------------------------------------
; 未読スキップ-OFF
[button name="unread_off" fix="true" target="*skip_off" graphic="&tf.btn_off" width="&tf.skip_img_width" height="&tf.skip_img_height" x="&tf.skip_posx[0]" y="&tf.skip_posy"]

; 未読スキップ-ON
[button name="unread_on"  fix="true" target="*skip_on"  graphic="&tf.btn_off" width="&tf.skip_img_width" height="&tf.skip_img_height" x="&tf.skip_posx[1]" y="&tf.skip_posy"]

;-------------------------------------------------------------------------------
; 画面サイズ
;-------------------------------------------------------------------------------
; ウィンドウサイズ
[button name="screen_window" fix="true" target="*screen_window" graphic="&tf.btn_off" width="&tf.screen_img_width" height="&tf.screen_img_height" x="&tf.screen_posx[0]" y="&tf.screen_posy"]

; フルスクリーン
[button name="screen_full"   fix="true" target="*screen_full"   graphic="&tf.btn_off" width="&tf.screen_img_width" height="&tf.screen_img_height" x="&tf.screen_posx[1]" y="&tf.screen_posy"]

;-------------------------------------------------------------------------------
; コンフィグ起動時に読み込み
;-------------------------------------------------------------------------------
[layopt layer="0" visible="true"]

[call target="*load_bgm_img"]
[call target="*load_se_img"]
[call target="*load_ch_img"]
[call target="*load_auto_img"]
[call target="*load_skip_img"]
[call target="*load_screen_img"]

[test_message_start]

[s]

;-------------------------------------------------------------------------------
; コンフィグモード終了
;-------------------------------------------------------------------------------
*backtitle
[cm]
[layopt layer="message1" visible="false"]
[clearfix]
[start_keyconfig]
[clearstack]

[awakegame]

;===============================================================================

; ボタンクリック時の処理

;===============================================================================
;-------------------------------------------------------------------------------
; BGM音量
;-------------------------------------------------------------------------------
*vol_bgm_mute
[iscript]

if(tf.current_bgm_vol != 0) {
	f.prev_vol_list[0] = tf.current_bgm_vol;
	f.prev_vol_list[1] = tf.index_num_bgm;
	tf.current_bgm_vol = 0;
	tf.index_num_bgm  = 0;
} else {
	tf.current_bgm_vol = f.prev_vol_list[0];
	tf.index_num_bgm  = f.prev_vol_list[1];
}

[endscript]

*vol_bgm_change
[free layer="0" name="bgmvol" time="0" wait="true"]
[call target="*load_bgm_img"]
[bgmopt volume="&tf.current_bgm_vol"]

[return]

;-------------------------------------------------------------------------------
; SE音量
;-------------------------------------------------------------------------------
*vol_se_mute
[iscript]

if( tf.current_se_vol != 0 ) {
	f.prev_vol_list[2] = tf.current_se_vol;
	f.prev_vol_list[3] = tf.index_num_se;
	tf.current_se_vol = 0;
	tf.index_num_se  = 0;
} else {
	tf.current_se_vol = f.prev_vol_list[2];
	tf.index_num_se  = f.prev_vol_list[3];
}

[endscript]

*vol_se_change
[free layer="0" name="sevol" time="0" wait="true"]
[call target="*load_se_img"]
[seopt volume="&tf.current_se_vol"]

[return]

;-------------------------------------------------------------------------------
; テキスト速度
;-------------------------------------------------------------------------------
*ch_speed_change
[eval exp="tf.current_ch_speed = tf.set_ch_speed"]
[free layer="0" name="ch" time="0" wait="true"]
[call target="*load_ch_img"]
[configdelay speed="&tf.set_ch_speed"]
[test_message_reset]

[return]

;-------------------------------------------------------------------------------
; オート時のウェイト
;-------------------------------------------------------------------------------
*auto_speed_change
[eval exp="tf.current_auto_speed = tf.set_auto_speed"]
[free layer="0" name="auto" time="0" wait="true"]
[call target="*load_auto_img"]
[autoconfig speed="&tf.set_auto_speed"]

[return]

;-------------------------------------------------------------------------------
; スキップ処理-OFF
;-------------------------------------------------------------------------------
*skip_off
[free layer="0" name="unread_on" time="10"]
[image layer="0" name="unread_off" storage="&tf.skip_img_off" x="&tf.skip_posx[0]" y="&tf.skip_posy"]
[config_record_label skip="false"]

[return]

;-------------------------------------------------------------------------------
; スキップ処理-ON
;-------------------------------------------------------------------------------
*skip_on
[free layer="0" name="unread_off" time="10"]
[image layer="0" name="unread_on" storage="&tf.skip_img_on" x="&tf.skip_posx[1]" y="&tf.skip_posy"]
[config_record_label skip="true"]

[return]

;-------------------------------------------------------------------------------
; 画面サイズ-ウィンドウサイズ
;-------------------------------------------------------------------------------
*screen_window
[if exp="tf.screen_size == 'full'"]
	[screen_full]
	[free layer="0" name="screen_full" time="10"]
	[image layer="0" name="screen_window" storage="&tf.screen_img_window" x="&tf.screen_posx[0]" y="&tf.screen_posy"]
	[eval exp="tf.screen_size = 'window'"]
[endif]

[return]

;-------------------------------------------------------------------------------
; 画面サイズ-フルスクリーン
;-------------------------------------------------------------------------------
*screen_full
[if exp="tf.screen_size == 'window'"]
	[screen_full]
	[free layer="0" name="screen_window" time="10"]
	[image layer="0" name="screen_full" storage="&tf.screen_img_full" x="&tf.screen_posx[1]" y="&tf.screen_posy"]
	[eval exp="tf.screen_size = 'full'"]
[endif]

[return]

;===============================================================================

; 画像更新

;===============================================================================
*load_bgm_img
[if exp="tf.index_num_bgm == 0"]
	[image layer="0" name="bgmvol" storage="&tf.mute_img" x="&tf.mute_posx" y="&tf.mute_posy[0]"]
[else]
	[image layer="0" name="bgmvol" storage="&tf.gauge_img" x="&tf.gauge_posx[tf.index_num_bgm]" y="&tf.gauge_posy[0]"]
[endif]

[return]


*load_se_img
[if exp="tf.index_num_se == 0"]
	[image layer="0" name="sevol" storage="&tf.mute_img" x="&tf.mute_posx" y="&tf.mute_posy[1]"]
[else]
	[image layer="0" name="sevol"  storage="&tf.gauge_img" x="&tf.gauge_posx[tf.index_num_se]" y="&tf.gauge_posy[1]"]
[endif]

[return]


*load_ch_img
[image layer="0" name="ch" storage="&tf.gauge_img" x="&tf.gauge_posx[tf.index_num_ch + 1]" y="&tf.gauge_posy[2]"]

[return]


*load_auto_img
[image layer="0" name="auto"  storage="&tf.gauge_img" x="&tf.gauge_posx[tf.index_num_auto + 1]" y="&tf.gauge_posy[3]"]

[return]

*load_skip_img
[if exp="tf.text_skip == 'ON'"]
	[image layer="0" name="unread_on" storage="&tf.skip_img_on" x="&tf.skip_posx[1]" y="&tf.skip_posy"]
[else]
	[image layer="0" name="unread_off" storage="&tf.skip_img_off" x="&tf.skip_posx[0]" y="&tf.skip_posy"]
[endif]

[return]

*load_screen_img
[if exp="tf.screen_size == 'full'"]
	[image layer="0" name="screen_full" storage="&tf.screen_img_full" x="&tf.screen_posx[1]" y="&tf.screen_posy"]
[else]
	[image layer="0" name="screen_window" storage="&tf.screen_img_window" x="&tf.screen_posx[0]" y="&tf.screen_posy"]
[endif]

[return]
