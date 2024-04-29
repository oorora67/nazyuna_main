document.getElementById("url-button").onclick = function () {
    window.location.href = 'https://web.iriam.app/s/user/cQDPn6fPph?uuid=090efdde';
};
document.getElementById("url-button2").onclick = function () {
    window.location.href = 'https://twitter.com/1seri_nazuna7';
};
document.getElementById("send-button2").onclick = function () {
    console.log(getGeoCord());
};
function getRandomInt(max) {
    return Math.floor(Math.random() * max);
};
function getClosestNum(needle, haystack) {
    return haystack.reduce((a, b) => {
        let aDiff = Math.abs(a - needle);
        let bDiff = Math.abs(b - needle);

        if (aDiff == bDiff) {
            // 大きい方 vs 小さいほう (> vs <) を指定する
            return a > b ? a : b;
        } else {
            return bDiff < aDiff ? b : a;
        }
    });
}
function getGeoCord(){
    navigator.geolocation.getCurrentPosition(success, error, options);
    
}
const options = {
    enableHighAccuracy: true,
    timeout: 5000,
    maximumAge: 0,
};
const gps_url = {
    area: 130000,
    area_no: 0
};
function success(pos) {
    const crd = pos.coords;
    console.log("Your current position is:");
    console.log(`Latitude : ${crd.latitude}`);
    console.log(`Longitude: ${crd.longitude}`);
    console.log(`More or less ${crd.accuracy} meters.`);
    console.log('https://mreversegeocoder.gsi.go.jp/reverse-geocoder/LonLatToAddress?lat='+crd.latitude+'&lon='+crd.longitude);
    fetch('https://mreversegeocoder.gsi.go.jp/reverse-geocoder/LonLatToAddress?lat='+crd.latitude+'&lon='+crd.longitude)
    .then(function (response) {
        return response.json();
    })
    .then(function (geocoder) {
console.log(geocoder.results.muniCd);
fetch('https://www.jma.go.jp/bosai/common/const/area.json')
    .then(function (response) {
        return response.json();
    })
    .then(function (area_json) {
        let flog = 1;
        let count = 0;
        let data
        let datalist =  []
        for (data_1 in area_json.class20s) {
            //console.log(data);
            datalist.push(data_1);
        };
        //console.log(datalist)

        //console.log(getClosestNum(geocoder.results.muniCd+( '00' + count ).slice( -2 ),datalist))
        data = getClosestNum(geocoder.results.muniCd+( '00' + count ).slice( -2 ),datalist)
        //console.log(data)
        //console.log(data)
        //console.log(area_json.class20s[data].parent)
        let data20 = area_json.class20s[data].parent
        let data15 = area_json.class15s[data20].parent
        let data10 = area_json.class10s[data15].parent
        let data_offices = area_json.offices[data10].children.indexOf(data15)
        //console.log(area_json.offices[data10].children.indexOf(data15))
        gps_url.area = data10
        gps_url.area_no = data_offices
        const new_url = new URL(window.location.href);
        new_url.searchParams.set('area', gps_url.area)
        new_url.searchParams.set('area_no', gps_url.area_no);
        window.location.href = new_url;
    })
    })
};
function error(err) {
    document.getElementById("gps_message").innerText = 'GPSの権限の許可がされていないか、情報の取得に失敗しました。'
    console.warn(`ERROR(${err.code}): ${err.message}`);
};
let request_url = new URL(window.location.href);// URLを取得
let params = request_url.searchParams;// URLSearchParamsオブジェクトを取得
// getメソッドにて取得
//console.log(params.get('id')); // 1
let url = "https://www.jma.go.jp/bosai/forecast/data/forecast/" + params.get('area') + ".json";
let area_no = params.get('area_no');
let latitude
let longitude
if (area_no == null) { area_no = 0; };
var wc = {
    100: '晴れ',
    101: '晴れ時々曇り',
    102: '晴れ一時雨',
    103: '晴れ時々雨',
    104: '晴れ一時雪',
    105: '晴れ時々雪',
    106: '晴れ一時雨か雪',
    107: '晴れ時々雨か雪',
    108: '晴れ一時雨か雷雨',
    110: '晴れのち時々曇り',
    111: '晴れのち曇り',
    112: '晴れのち一時雨',
    113: '晴れのち時々雨',
    114: '晴れのち雨',
    115: '晴れのち一時雪',
    116: '晴れのち時々雪',
    117: '晴れのち雪',
    118: '晴れのち雨か雪',
    119: '晴れのち雨か雷雨',
    120: '晴れ朝夕一時雨',
    121: '晴れ朝の内一時雨',
    122: '晴れ夕方一時雨',
    123: '晴れ山沿い雷雨',
    124: '晴れ山沿い雪',
    125: '晴れ午後は雷雨',
    126: '晴れ昼頃から雨',
    127: '晴れ夕方から雨',
    128: '晴れ夜は雨',
    130: '朝の内霧のち晴れ',
    131: '晴れ明け方霧',
    132: '晴れ朝夕曇り',
    140: '晴れ時々雨で雷を伴う',
    160: '晴れ一時雪か雨',
    170: '晴れ時々雪か雨',
    181: '晴れのち雪か雨',
    200: '曇り',
    201: '曇り時々晴れ',
    202: '曇り一時雨',
    203: '曇り時々雨',
    204: '曇り一時雪',
    205: '曇り時々雪',
    206: '曇り一時雨か雪',
    207: '曇り時々雨か雪',
    208: '曇り一時雨か雷雨',
    209: '霧',
    210: '曇りのち時々晴れ',
    211: '曇りのち晴れ',
    212: '曇りのち一時雨',
    213: '曇りのち時々雨',
    214: '曇りのち雨',
    215: '曇りのち一時雪',
    216: '曇りのち時々雪',
    217: '曇りのち雪',
    218: '曇りのち雨か雪',
    219: '曇りのち雨か雷雨',
    220: '曇り朝夕一時雨',
    221: '曇り朝の内一時雨',
    222: '曇り夕方一時雨',
    223: '曇り日中時々晴れ',
    224: '曇り昼頃から雨',
    225: '曇り夕方から雨',
    226: '曇り夜は雨',
    228: '曇り昼頃から雪',
    229: '曇り夕方から雪',
    230: '曇り夜は雪',
    231: '曇り海上海岸は霧か霧雨',
    240: '曇り時々雨で雷を伴う',
    250: '曇り時々雪で雷を伴う',
    260: '曇り一時雪か雨',
    270: '曇り時々雪か雨',
    281: '曇りのち雪か雨',
    300: '雨',
    301: '雨時々晴れ',
    302: '雨時々止む',
    303: '雨時々雪',
    304: '雨か雪',
    306: '大雨',
    308: '雨で暴風を伴う',
    309: '雨一時雪',
    311: '雨のち晴れ',
    313: '雨のち曇り',
    314: '雨のち時々雪',
    315: '雨のち雪',
    316: '雨か雪のち晴れ',
    317: '雨か雪のち曇り',
    320: '朝の内雨のち晴れ',
    321: '朝の内雨のち曇り',
    322: '雨朝晩一時雪',
    323: '雨昼頃から晴れ',
    324: '雨夕方から晴れ',
    325: '雨夜は晴れ',
    326: '雨夕方から雪',
    327: '雨夜は雪',
    328: '雨一時強く降る',
    329: '雨一時みぞれ',
    340: '雪か雨',
    350: '雨で雷を伴う',
    361: '雪か雨のち晴れ',
    371: '雪か雨のち曇り',
    400: '雪',
    401: '雪時々晴れ',
    402: '雪時々止む',
    403: '雪時々雨',
    405: '大雪',
    406: '風雪強い',
    407: '暴風雪',
    409: '雪一時雨',
    411: '雪のち晴れ',
    413: '雪のち曇り',
    414: '雪のち雨',
    420: '朝の内雪のち晴れ',
    421: '朝の内雪のち曇り',
    422: '雪昼頃から雨',
    423: '雪夕方から雨',
    425: '雪一時強く降る',
    426: '雪のちみぞれ',
    427: '雪一時みぞれ',
    450: '雪で雷を伴う',
};
area_dic = {
    '北海道/釧路': '014100',
    '北海道/旭川': '012000',
    '北海道/札幌': '016000',
    '青森県': '020000',
    '岩手県': '030000',
    '宮城県': '040000',
    '秋田県': '050000',
    '山形県': '060000',
    '福島県': '070000',
    '茨城県': '080000',
    '栃木県': '090000',
    '群馬県': '100000',
    '埼玉県': '110000',
    '千葉県': '120000',
    '東京都': '130000',
    '神奈川県': '140000',
    '新潟県': '150000',
    '富山県': '160000',
    '石川県': '170000',
    '福井県': '180000',
    '山梨県': '190000',
    '長野県': '200000',
    '岐阜県': '210000',
    '静岡県': '220000',
    '愛知県': '230000',
    '三重県': '240000',
    '滋賀県': '250000',
    '京都府': '260000',
    '大阪府': '270000',
    '兵庫県': '280000',
    '奈良県': '290000',
    '和歌山県': '300000',
    '鳥取県': '310000',
    '島根県': '320000',
    '岡山県': '330000',
    '広島県': '340000',
    '山口県': '350000',
    '徳島県': '360000',
    '香川県': '370000',
    '愛媛県': '380000',
    '高知県': '390000',
    '福岡県': '400000',
    '佐賀県': '410000',
    '長崎県': '420000',
    '熊本県': '430000',
    '大分県': '440000',
    '宮崎県': '450000',
    '鹿児島県': '460100',
    '沖縄県/那覇': '471000',
    '沖縄県/石垣': '474000'
}
fetch(url)
    .then(function (response) {
        return response.json();
    })
    .then(function (weather) {
        // 特定の地域(今回は東京)だけ選択して変数に詰め直す
        var area = weather[0].timeSeries[0].areas[area_no];
        // 発表者と報告日時の情報を画面に書き出す
        document.getElementById("publishingOffice").innerText = '発表者:' + weather[0].publishingOffice;
        document.getElementById("reportDatetime").innerText = '発表日時:' + weather[0].reportDatetime.replace('+09:00', '').replace('T', ' ');
        // 特定地域の情報を画面に書き出す
        document.getElementById("targetArea").innerText = '対象地域:' + area.area.name;
        if (wc[area.weatherCodes[0]]) {
            document.getElementById("today").innerText = '今日の天気:' + wc[area.weatherCodes[0]];
        }
        else {
            document.getElementById("today").innerText = '今日の天気:' + '情報がありません'
        };
        if (wc[area.weatherCodes[1]]) {
            document.getElementById("tomorrow").innerText = '明日の天気:' + wc[area.weatherCodes[1]];
        }
        else {
            document.getElementById("tomorrow").innerText = '明日の天気:' + '情報がありません'
        };
        if (wc[area.weatherCodes[2]]) {
            document.getElementById("dayAfterTomorrow").innerText = '明後日の天気:' + wc[area.weatherCodes[2]]
        }
        else {
            document.getElementById("dayAfterTomorrow").innerText = '明後日の天気:' + '情報がありません'
        };
        //音声
        document.getElementById("button").onclick = function (e) {
            if (document.querySelector(".button-text").innerText == "PlayNow") {
                return;
            };
            document.querySelector(".button-text").innerText = "PlayNow";
            let cb1 = document.getElementById('i1');
            let cb2 = document.getElementById('i2');
            let cb3 = document.getElementById('i3');
            let cb4 = document.getElementById('i4');
            let playlist = new Array();

            if (cb1.checked) {
                if (wc[area.weatherCodes[0]]) {
                    console.log('data/sound/' + area.weatherCodes[0] + '.mp3');
                    playlist.push('data/sound/today_' + getRandomInt(2) + '.mp3');
                    playlist.push('data/sound/' + area.weatherCodes[0] + '.mp3');
                    playlist.push('data/sound/end_' + getRandomInt(5) + '.mp3');
                } else {
                    console.log("コードが存在しません")
                }
            };
            if (cb2.checked) {
                if (wc[area.weatherCodes[1]]) {
                    console.log('data/sound/' + area.weatherCodes[1] + '.mp3');
                    playlist.push('data/sound/tomorrow_' + getRandomInt(2) + '.mp3');
                    playlist.push('data/sound/' + area.weatherCodes[1] + '.mp3');
                    playlist.push('data/sound/end_' + getRandomInt(5) + '.mp3');
                } else {
                    console.log("コードが存在しません")
                }
            };
            if (cb3.checked) {
                if (wc[area.weatherCodes[2]]) {
                    console.log('data/sound/' + area.weatherCodes[2] + '.mp3');
                    playlist.push('data/sound/dayAfterTomorrow_' + getRandomInt(2) + '.mp3');
                    playlist.push('data/sound/' + area.weatherCodes[2] + '.mp3');
                    playlist.push('data/sound/end_' + getRandomInt(5) + '.mp3');
                } else {
                    console.log("コードが存在しません")
                }
            };
            /*
            if (cb4.checked) {
                if (wc[area.weatherCodes[0]]) {
                    console.log('data/sound/' + area.weatherCodes[0] + '.mp3')
                    //playlist.push('data/sound/' + area.weatherCodes[0] + '.mp3');
                } else {
                    //orangeというキーが存在しない場合の処理
                    console.log("コードが存在しません")
                }
            };
            */
            var audio = document.createElement('audio');
            playlist.push('data/sound/blank.mp3');
            document.body.appendChild(audio);
            audio.style.width = '100%';
            audio.style.height = 'auto';
            audio.controls = false;
            audio.volume = 1.0;
            audio.src = playlist[0];
            audio.play();
            let index = 0;
            audio.addEventListener('ended', function () {
                index++;
                if (index < playlist.length) {
                    audio.src = playlist[index];
                    audio.play();
                }
                else {
                    document.body.removeChild(audio);
                    document.querySelector(".button-text").innerText = "SOUND";
                }
            });
        };
    })
    .catch(error => {
        document.getElementById("targetArea").innerText = '！対象地域の設定を見直してください！';
    });
fetch('https://www.jma.go.jp/bosai/common/const/area.json')
    .then(function (response) {
        return response.json();
    })
    .then(function (area_json) {
        //console.log(area_json.centers);
        // 特定の地域(今回は東京)だけ選択して変数に詰め直す
        //let categories = area_json[0].centers[0].name;
        const categories1 = [];
        for (data in area_json.centers) {
            //console.log(data);
            categories1.push({ category: data, name: area_json.centers[data].name });
        };
        // 大分類、小分類の選択肢を配列でそれぞれ用意
        // 小分類は、大分類と紐付けるためにオブジェクト型を使う
        //console.log(area_json.offices);
        const categories2 = [];
        for (data in area_json.offices) {
            //console.log(data);
            categories2.push({ category: area_json.offices[data].parent, category2: data, name: area_json.offices[data].name });
        };
        const categories3 = [];
        for (data in area_json.class10s) {
            //console.log(data);
            categories3.push({ category: area_json.class10s[data].parent, category2: data, name: area_json.class10s[data].name });
        };
        const categorySelect1 = document.getElementById('category-select-1');
        const categorySelect2 = document.getElementById('category-select-2');
        const categorySelect3 = document.getElementById('category-select-3');
        // 大分類のプルダウンを生成
        categories1.forEach(category => {
            const option = document.createElement('option');
            option.textContent = category.name;

            categorySelect1.appendChild(option);
        });

        // 大分類が選択されたら小分類のプルダウンを生成
        categorySelect1.addEventListener('input', () => {

            // 小分類のプルダウンをリセット
            const options = document.querySelectorAll('#category-select-2 > option');
            options.forEach(option => {
                option.remove();
            });

            // 小分類のプルダウンに「選択してください」を加える
            const firstSelect = document.createElement('option');
            firstSelect.textContent = '選択してください';
            categorySelect2.appendChild(firstSelect);

            // 小分類を選択（クリック）できるようにする
            categorySelect2.disabled = false;

            // 大分類が選択されていない（「選択してください」になっている）とき、小分類を選択（クリック）できないようにする
            if (categorySelect1.value == '選択してください') {
                categorySelect2.disabled = true;
                categorySelect3.disabled = true;
                return;
            }

            // 大分類で選択されたカテゴリーと同じ小分類のみを、プルダウンの選択肢に設定する
            categories2.forEach(subCategory => {
                if (categories1.find(e => e.name === categorySelect1.value).category == subCategory.category) {
                    const option = document.createElement('option');
                    option.textContent = subCategory.name;
                    categorySelect2.appendChild(option);
                }
            });
        });
        // 大分類が選択されたら小分類のプルダウンを生成
        categorySelect2.addEventListener('input', () => {

            // 小分類のプルダウンをリセット
            const options = document.querySelectorAll('#category-select-3 > option');
            options.forEach(option => {
                option.remove();
            });

            // 小分類のプルダウンに「選択してください」を加える
            const firstSelect = document.createElement('option');
            firstSelect.textContent = '選択してください';
            categorySelect3.appendChild(firstSelect);

            // 小分類を選択（クリック）できるようにする
            categorySelect3.disabled = false;

            // 大分類が選択されていない（「選択してください」になっている）とき、小分類を選択（クリック）できないようにする
            if (categorySelect2.value == '選択してください') {
                categorySelect3.disabled = true;
                return;
            }
            if (categorySelect1.value == '選択してください') {
                categorySelect3.disabled = true;
                return;
            }

            // 大分類で選択されたカテゴリーと同じ小分類のみを、プルダウンの選択肢に設定する
            categories3.forEach(subCategory => {
                if (categories2.find(e => e.name === categorySelect2.value).category2 == subCategory.category) {
                    const option = document.createElement('option');
                    option.textContent = subCategory.name;
                    categorySelect3.appendChild(option);
                }

            });
            categorySelect3.addEventListener('input', () => {
                const new_url = new URL(window.location.href);
                new_url.searchParams.set('area', categories2.find(e => e.name === categorySelect2.value).category2)
                new_url.searchParams.set('area_no', categorySelect3.selectedIndex - 1);
                window.location.href = new_url;
                document.getElementById("send-button").onclick = function () {
                    window.location.href = new_url;
                };
            });
        });
    })
    .catch(error => {

    });



