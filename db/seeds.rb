# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
azia = Area.create(name: "アジア")

azia_korea = azia.children.create(name: "韓国")
azia_tai = azia.children.create(name: "タイ")
azia_taiwan = azia.children.create(name: "台湾")
azia_toruko = azia.children.create(name: "トルコ")
azia_maresia = azia.children.create(name: "マレーシア")
azia_india = azia.children.create(name: "インド")

azia_korea.children.create([{name: "江南"}, {name: "明洞"}, {name: "仁寺洞/鍾路"}, {name: "梨泰院/漢南洞"}])
azia_tai.children.create([{name: "バンコク"}, {name: "プーケット"}, {name: "アユタヤ"}, {name: "チェンマイ"}])
azia_taiwan.children.create([{name: "台北"}, {name: "九份"}, {name: "花蓮"}])
azia_toruko.children.create([{name: "カッパドキア"}, {name: "イスタンブール"}])	
azia_maresia.children.create([{name: "クアラルンプール"}, {name: "ボルネオ島"}])
azia_india.children.create([{name: "デリー"}, {name: "アグラ"}, {name: "バラナシ"}])

europe = Area.create(name: "ヨーロッパ")

europe_italy = europe.children.create(name: "イタリア")
europe_england = europe.children.create(name: "イギリス")
europe_spain = europe.children.create(name: "スペイン")
europe_netherlands = europe.children.create(name: "オランダ")
europe_belgium = europe.children.create(name: "ベルギー")

europe_italy.children.create([{name: "ベネチア"}, {name: "ミラノ"}, {name:"フィレンツェ"}, {name: "ローマ"}, {name: "ピサ"}])
europe_england.children.create([{name: "ロンドン"}, {name: "ソールズベリ"}, {name: "オックスフォード"}])
europe_spain.children.create([{name: "バルセロナ"}, {name: "マドリッド"}, {name: "トレド"}])
europe_netherlands.children.create([{name: "アムステルダム"}])
europe_belgium.children.create([{name: "ブリュッセル"}, {name: "ブルージュ"}, {name: "トレド"}, {name: "ゲント"}, {name: "トンゲレン"}])


northamerica = Area.create(name: "北米")

northamerica_hawaii = northamerica.children.create(name: "ハワイ")
northamerica_amerika = northamerica.children.create(name: "アメリカ")
northamerica_kanada = northamerica.children.create(name: "カナダ")

northamerica_hawaii.children.create([{name: "オアフ島"}, {name: "マウイ島"}, {name: "カウアイ島"}])
northamerica_amerika.children.create([{name: "ロサンゼルス"}, {name: "サンフランシスコ"}, {name: "ニューヨーク"}])
northamerica_kanada.children.create([{name: "ケベックシティ"}, {name: "バンクーバー"}, {name: "トロント"}])


southamerika = Area.create(name: "中南米")

southamerika_boribia = southamerika.children.create(name: "ボリビア")
southamerika_peru = southamerika.children.create(name: "ペルー")
southamerika_brazil = southamerika.children.create(name: "ブラジル")

southamerika_brazil.children.create([{name: "リオデジャネイロ"}])


oceania = Area.create(name: "オセアニア")

oceania_australia = oceania.children.create(name: "オーストラリア")
oceania_newzealand = oceania.children.create(name: "ニュージーランド")
oceania_physique = oceania.children.create(name: "フィジー")

oceania_australia.children.create([{name: "シドニー"}, {name: "ゴールドコースト"}, {name: "メルボルン"}, {name: "ケアンズ"}, {name: "ノーザンテリトリー"}])
oceania_newzealand.children.create([{name: "オークランド"}, {name: "テカポ"}, {name: "クイーンズタウン"}])
