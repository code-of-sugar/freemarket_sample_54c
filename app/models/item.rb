class Item < ApplicationRecord
  belongs_to :user
  belongs_to :category
  belongs_to :brand
  belongs_to :size

  enum state:{
    新品、未使用:1,未使用に近い:2,目立った傷や汚れなし:3,
    やや傷や汚れあり:4,傷や汚れあり:5,全体的に状態が悪い:6
  }

  enum burden:{
    送料込み（出品者負担）:1, 着払い（購入者負担）:2
  }

  enum method:{
    未定:1,らくらくメルカリ便:2,ゆうメール:3,
    レターパック:4,普通郵便（定形、定形外）:5,クロネコヤマト:6,
    ゆうパック:7,クリックポスト:8,ゆうパケット:9
  }

  enum daytodelivery:{
    １〜２日で発送:1, ２〜３日で発送:2, ４〜７日で発送:3
  }
end