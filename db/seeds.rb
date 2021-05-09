# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!( email:"admin@test.com", password: 'test123', password_confirmation: 'test123', admin:true)

Category.create!(heading: 'Rare', body:'These are the rare collectibles', display: true)
Category.create!(heading: 'Limited', body:'These are collectibles are available for limited time', display: true)
Category.create!(heading: 'Regular', body:'These are regular collectibles', display: true)

10.times do |i|
  curry = Product.new(
    name: "Steph Curry NBA Topshot",
    description: "Rare collectible card",
    price: 500,
    category: Category.find(1)
  )
  lebron = Product.new(
    name: "Lebron James NBA Topshot",
    description: "Limited collectible card",
    price: 350,
    category: Category.find(2)
  )
  kawhi = Product.new(
    name: "Kawhi Leonard NBA Topshot",
    description: "Regular collectible card",
    price: 100,
    category: Category.find(3)
  )
  curry.image.attach(io: open("https://assets.nbatopshot.com/resize/editions/2_seeing_stars_common/e0d5ef06-6b7b-4c70-874e-d478e46ac57b/play_e0d5ef06-6b7b-4c70-874e-d478e46ac57b_2_seeing_stars_common_capture_Hero_2880_2880_Black.jpg?width=582"), filename: "#{i}_image.jpg")
  lebron.image.attach(io: open("https://assets.nbatopshot.com/resize/resize/editions/1_holo_mmxx_legendary/de32d3fb-0e6a-447e-b42a-08bbf1607b7d/play_de32d3fb-0e6a-447e-b42a-08bbf1607b7d_1_holo_mmxx_legendary_capture_Hero_2880_2880_Black.jpg?width=500&quality=80"), filename: "#{i}_image.jpg")
  kawhi.image.attach(io: open("https://assets.nbatopshot.com/resize/editions/2_base_set_common/c994390c-d718-4476-bb43-7cfa246352d3/play_c994390c-d718-4476-bb43-7cfa246352d3_2_base_set_common_capture_Hero_2880_2880_Black.jpg?width=582"), filename: "#{i}_image.jpg")


  curry.save
  lebron.save
  kawhi.save
end