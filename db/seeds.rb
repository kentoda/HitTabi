# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
azia = Area.create(name: "アジア")

korea = azia.children.create(name: "韓国")
tai = azia.children.create(name: "タイ")
taiwan = azia.children.create(name: "台湾")
toruko = azia.children.create(name: "トルコ")
maresia = azia.children.create(name: "マレーシア")
india = azia.children.create(name: "インド")

korea.children.create([{name: "江南"}, {name: "明洞"}, {name: "仁寺洞/鍾路"}, {name: "梨泰院/漢南洞"}])
tai.children.create([{name: "バンコク"}, {name: "プーケット"}, {name: "アユタヤ"}, {name: "チェンマイ"}])
taiwan.children.create([{name: "台北"}, {name: "九份"}, {name: "花蓮"}])
toruko.children.create([{name: "カッパドキア"}, {name: "イスタンブール"}])	
maresia.children.create([{name: "クアラルンプール"}, {name: "ボルネオ島"}])
india.children.create([{name: "デリー"}, {name: "アグラ"}, {name: "バラナシ"}])

europe = Area.create(name: "ヨーロッパ")

italy = europe.children.create(name: "イタリア")
england = europe.children.create(name: "イギリス")
spain = europe.children.create(name: "スペイン")
netherlands = europe.children.create(name: "オランダ")
belgium = europe.children.create(name: "ベルギー")

italy.children.create([{name: "ベネチア"}, {name: "ミラノ"}, {name:"フィレンツェ"}, {name: "ローマ"}, {name: "ピサ"}])
england.children.create([{name: "ロンドン"}, {name: "ソールズベリ"}, {name: "オックスフォード"}])
spain.children.create([{name: "バルセロナ"}, {name: "マドリッド"}, {name: "トレド"}])
netherlands.children.create([{name: "アムステルダム"}])
belgium.children.create([{name: "ブリュッセル"}, {name: "ブルージュ"}, {name: "トレド"}, {name: "ゲント"}, {name: "トンゲレン"}])


northamerica = Area.create(name: "北米")

hawaii = northamerica.children.create(name: "ハワイ")
amerika = northamerica.children.create(name: "アメリカ")
kanada = northamerica.children.create(name: "カナダ")

hawaii.children.create([{name: "オアフ島"}, {name: "マウイ島"}, {name: "カウアイ島"}])
amerika.children.create([{name: "ロサンゼルス"}, {name: "サンフランシスコ"}, {name: "ニューヨーク"}])
kanada.children.create([{name: "ケベックシティ"}, {name: "バンクーバー"}, {name: "トロント"}])


southamerika = Area.create(name: "中南米")

boribia = southamerika.children.create(name: "ボリビア")
peru = southamerika.children.create(name: "ペルー")
brazil = southamerika.children.create(name: "ブラジル")

brazil.children.create([{name: "リオデジャネイロ"}])


oceania = Area.create(name: "オセアニア")

australia = oceania.children.create(name: "オーストラリア")
newzealand = oceania.children.create(name: "ニュージーランド")
physique = oceania.children.create(name: "フィジー")

australia.children.create([{name: "シドニー"}, {name: "ゴールドコースト"}, {name: "メルボルン"}, {name: "ケアンズ"}, {name: "ノーザンテリトリー"}])
newzealand.children.create([{name: "オークランド"}, {name: "テカポ"}, {name: "クイーンズタウン"}])
