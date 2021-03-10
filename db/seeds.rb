# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(
  name: "テストマン",
  email: "test@co.jp"
)

Menulist.create(
  category: "和食",
  user_id: 1
)
Menuitem.create(
  item: "味噌汁",
  foods: ['味噌', '豆腐', 'わかめ'],
  menulist_id: 1
)
Menuitem.create(
  item: "親子丼",
  foods: ['鶏肉', 'たまご', 'たまねぎ'],
  menulist_id: 1
)
Menuitem.create(
  item: "肉じゃが",
  foods: ['じゃがいも', 'にんじん', '牛肉'],
  menulist_id: 1
)

Menulist.create(
  category: "中華",
  user_id: 1
)
Menuitem.create(
  item: "麻婆豆腐",
  foods: ['豆腐', '豚肉'],
  menulist_id: 2
)
Menuitem.create(
  item: "チャーハン",
  foods: ['チャーシュー', 'ネギ', 'たまご','たまねぎ'],
  menulist_id: 2
)
Menuitem.create(
  item: "回鍋肉",
  foods: ['キャベツ', '豚肉'],
  menulist_id: 2
)

Menulist.create(
  category: "洋食",
  user_id: 1
)
Menuitem.create(
  item: "ミートパスタ",
  foods: ['ミンチ', 'パスタ', 'トマト'],
  menulist_id: 3
)
Menuitem.create(
  item: "ピザ",
  foods: ['チーズ', 'トマト', 'ピーマン'],
  menulist_id: 3
)
Menuitem.create(
  item: "オムライス",
  foods: ['たまご', '鶏肉', 'たまねぎ'],
  menulist_id: 3
)



Foodlist.create(
  category: "冷蔵庫",
  user_id: 1
)
Fooditem.create(
  item: "にんじん",
  foodlist_id: 1
)
Fooditem.create(
  item: "豚肉",
  foodlist_id: 1
)
Fooditem.create(
  item: "鶏肉",
  foodlist_id: 1
)

Foodlist.create(
  category: "廊下",
  user_id: 1
)
Fooditem.create(
  item: "玉ねぎ",
  foodlist_id: 2
)
Fooditem.create(
  item: "じゃがいも",
  foodlist_id: 2
)
Fooditem.create(
  item: "レタス",
  foodlist_id: 2
)

Foodlist.create(
  category: "調味料",
  user_id: 1
)
Fooditem.create(
  item: "味噌",
  foodlist_id: 3
)
Fooditem.create(
  item: "マヨネーズ",
  foodlist_id: 3
)
Fooditem.create(
  item: "ケチャップ",
  foodlist_id: 3
)



Buylist.create(
  category: "野菜",
  user_id: 1
)
Buyitem.create(
  item: "ごぼう",
  buylist_id: 1
)
Buyitem.create(
  item: "トマト",
  buylist_id: 1
)
Buyitem.create(
  item: "大根",
  buylist_id: 1
)

Buylist.create(
  category: "お菓子",
  user_id: 1
)
Buyitem.create(
  item: "チョコ",
  buylist_id: 2
)
Buyitem.create(
  item: "ポテチ",
  buylist_id: 2
)
Buyitem.create(
  item: "ガム",
  buylist_id: 2
)

Buylist.create(
  category: "肉類",
  user_id: 1
)
Buyitem.create(
  item: "牛肉",
  buylist_id: 3
)
Buyitem.create(
  item: "鹿肉",
  buylist_id: 3
)
Buyitem.create(
  item: "馬肉",
  buylist_id: 3
)

