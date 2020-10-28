# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(
  [
    {
      id: 1,
      name: '難波',
      email: 'hoge1@gmail.com',
      section_name: '営業',
      position_name: '総合職',
      relationship_status: 1,
      introduction: 'よろしく。',
      profile_image: File.open('./app/assets/images/funny_02.png'),
      password: '000000',
    },
    {
      id: 2,
      name: '梅田',
      email: 'hoge2@gmail.com',
      section_name: '総務',
      position_name: '一般職',
      relationship_status: 2,
      introduction: 'はじめまして。',
      profile_image: File.open('./app/assets/images/ccn_200618jri1.jpg'),
      password: '111111',
    },
    {
      id: 3,
      name: "東京",
      email: "hoge3@gmail.com",
      section_name: "財務",
      position_name: "管理職",
      relationship_status: 0,
      introduction: "こんにちわ。",
      profile_image: File.open("./app/assets/images/kasa_golf.png"),
      password: "222222",
    },
    {
      id: 4,
      name: "千代田",
      email: "hoge4@gmail.com",
      section_name: "広報",
      position_name: "総合職",
      relationship_status: 3,
      introduction: "宜しくお願いいたします。",
      profile_image: File.open("./app/assets/images/ishiki_hikui_man.png"),
      password: "333333",
    },
    {
      id: 5,
      name: "横浜",
      email: "hoge5@gmail.com",
      section_name: "物流",
      position_name: "一般職",
      relationship_status: 1,
      introduction: "仲良くしてください。",
      profile_image: File.open("./app/assets/images/otaku_girl_fashion.png"),
      password: "444444",
    },
    {
      id: 6,
      name: "京都",
      email: "hoge6@gmail.com",
      section_name: "マーケティング",
      position_name: "管理職",
      relationship_status: 0,
      introduction: "飲みに行きましょう。",
      profile_image: File.open("./app/assets/images/online_nomikai_owaranai_man.png"),
      password: "555555",
    },
    {
      id: 7,
      name: "神戸",
      email: "hoge7@gmail.com",
      section_name: "システム",
      position_name: "総合職",
      relationship_status: 2,
      introduction: "繋がりを増やしたいです。",
      profile_image: File.open("./app/assets/images/nigaoe_nitobe_inazou.png"),
      password: "666666",
    },
    {
      id: 8,
      name: "奈良",
      email: "hoge8@gmail.com",
      section_name: "人事",
      position_name: "一般職",
      relationship_status: 3,
      introduction: "新入社員です。",
      profile_image: File.open("./app/assets/images/gao_pose_woman.png"),
      password: "777777",
    },
    {
      id: 9,
      name: "滋賀",
      email: "hoge9@gmail.com",
      section_name: "秘書",
      position_name: "管理職",
      relationship_status: 0,
      introduction: "気軽にお話できると嬉しいです。",
      profile_image: File.open("./app/assets/images/fashion_osyare_middle_man.png"),
      password: "888888",
    },
    {
      id: 10,
      name: "和歌山",
      email: "hoge10@gmail.com",
      section_name: "知財",
      position_name: "総合職",
      relationship_status: 1,
      introduction: "中途で入社しました。",
      profile_image: File.open("./app/assets/images/gal_o_man.png"),
      password: "999999",
    },
    {
      id: 11,
      name: "千里山",
      email: "hoge11@gmail.com",
      section_name: "法務",
      position_name: "一般職",
      relationship_status: 2,
      introduction: "知り合いを増やしたいです。",
      profile_image: File.open("./app/assets/images/drink_tapioka_tea_schoolgirl.png"),
      password: "101010",
    }
  ]
  )

Post.create!(
  [
    {
      user_id: 1,
      title: "サークル",
      body: "サッカーサークルに所属しています。興味ある方、参加しませんか。",
    },
    {
      user_id: 2,
      title: "昇格試験",
      body: "今後昇格試験を受けるのですが、どのような問題が出たか情報頂けると嬉しいです。",
    },
    {
      user_id: 3,
      title: "交流会",
      body: "取引先の会社と交流会があります。奮ってご参加ください。",
    },
    {
      user_id: 4,
      title: "コンパ",
      body: "社内コンパ開催します。参加希望の方はご連絡ください。",
    },
    {
      user_id: 5,
      title: "海外出張",
      body: "今度初めて海外出張に行きます。持ち物とか注意事項とかあれば教えて頂けると嬉しいです。",
    },
    {
      user_id: 6,
      title: "勉強会",
      body: "部で語学勉強会を開催することになりました。他部署からの参加もお待ちしております。",
    },
    {
      user_id: 7,
      title: "組合",
      body: "今週土曜日の組合イベントの人数が足りていません。よければご参加ください。",
    },
    {
      user_id: 8,
      title: "2020同期会",
      body: "2020年新入社員で同期会をします。参加される方ご連絡ください。",
    },
    {
      user_id: 9,
      title: "ランチ会",
      body: "お昼に交流しませんか。いろんな方とお話したいです。",
    },
    {
      user_id: 10,
      title: "中途入社の方",
      body: "中途入社の方と繋がりたいです。コメント頂けると嬉しいです。",
    },
    {
      user_id: 11,
      title: "今日暇な方",
      body: "今日暇な方、飲みに行きませんか。",
    }
  ]
  )
