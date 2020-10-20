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
      name: "難波",
      email: "hoge1@gmail.com",
      section_name: "営業部",
      position_name: "総合職",
      relationship_status: 1,
      introduction: "よろしく。",
      rofile_image: File.open("./app/assets/images/kasa_golf.png"),
      password: "000000",
    },
    {
      name: "梅田",
      email: "hoge2@gmail.com",
      section_name: "営業部",
      position_name: "一般職",
      relationship_status: 2,
      introduction: "はじめまして。",
      rofile_image: File.open("./app/assets/images/funny_02.png"),
      password: "111111",
    }
  ]
  )
