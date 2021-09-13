# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.create!(name: 'Beer', img_url: 'https://media-cldnry.s-nbcnews.com/image/upload/newscms/2021_18/3469828/210503-beer-stock-mn-1500.jpg')
Category.create!(name: 'Wine', img_url: 'https://static.onecms.io/wp-content/uploads/sites/9/2020/08/11/best-affordable-foreign-wines-FT-BLOG0820.jpg')
Category.create!(name: 'Vodka', img_url: 'https://www.thelist.com/img/gallery/when-you-drink-vodka-every-night-this-is-what-happens-to-your-body/intro-1580240935.jpg')
Category.create!(name: 'Whiskey', img_url: 'https://cdn.britannica.com/71/192771-050-CEF9CEC3/Glass-scotch-whiskey-ice.jpg')
Category.create!(name: 'Brandy', img_url: 'https://cf.ltkcdn.net/cocktails/images/orig/267128-2121x1414-brandy-and-fire.jpg')

puts "Alcohol Category seeded"

Brand.create!(name: 'Bud Light', img_url: 'https://wikiliq.org/wp-content/uploads/2021/02/Bud-Light.jpeg', quantity:200, price: 26.99, category_id: 1) 
Brand.create!(name: 'Heineken', img_url: 'https://wikiliq.org/wp-content/uploads/2021/02/Heineken-Lager.jpeg', quantity:200, price: 17.99, category_id: 1)
Brand.create!(name: 'Corona Light', img_url: 'https://wikiliq.org/wp-content/uploads/2021/02/Corona-Light.jpeg', quantity:200, price: 17.99, category_id: 1)

puts "Beer brand seeded"