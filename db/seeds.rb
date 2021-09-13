# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Category.destroy_all
Category.create!([
    {
        name: 'Beer', img_url: 'https://media-cldnry.s-nbcnews.com/image/upload/newscms/2021_18/3469828/210503-beer-stock-mn-1500.jpg'
    },

    {
        name: 'Wine', img_url: 'https://static.onecms.io/wp-content/uploads/sites/9/2020/08/11/best-affordable-foreign-wines-FT-BLOG0820.jpg'

    },
    {
        name: 'Vodka', img_url: 'https://www.thelist.com/img/gallery/when-you-drink-vodka-every-night-this-is-what-happens-to-your-body/intro-1580240935.jpg'

    },

    {
        name: 'Whiskey', img_url: 'https://cdn.britannica.com/71/192771-050-CEF9CEC3/Glass-scotch-whiskey-ice.jpg'

    },

    {
        name: 'Brandy', img_url: 'https://cf.ltkcdn.net/cocktails/images/orig/267128-2121x1414-brandy-and-fire.jpg'
    }

    
])

puts "Alcohol Category seeded"

Brand.create!(name: 'Bud Light', img_url: 'https://wikiliq.org/wp-content/uploads/2021/02/Bud-Light.jpeg', quantity:200, price: 26.99, category_id: 1) 
Brand.create!(name: 'Heineken', img_url: 'https://wikiliq.org/wp-content/uploads/2021/02/Heineken-Lager.jpeg', quantity:200, price: 17.99, category_id: 1)
Brand.create!(name: 'Corona Light', img_url: 'https://wikiliq.org/wp-content/uploads/2021/02/Corona-Light.jpeg', quantity:200, price: 17.99, category_id: 1)

Brand.create!(name: 'Catalans Rouge', img_url: 'https://img.thewhiskyexchange.com/900/wine_cat2019v1.jpg', quantity:200, price: 7.99, category_id: 2)
Brand.create!(name: 'Pago de Tharsys Bobal', img_url: 'https://img.thewhiskyexchange.com/900/wine_pag2019.jpg', quantity:200, price: 8.95, category_id: 2)
Brand.create!(name: 'Samurai Shiraz', img_url: 'https://img.thewhiskyexchange.com/900/wine_sam2020.jpg', quantity:200, price: 9.95, category_id: 2)

Brand.create!(name: 'Smirnoff', img_url: 'https://img.thewhiskyexchange.com/900/vodka_smi4.jpg', quantity:200, price: 20.95, category_id: 3)
Brand.create!(name: 'Absolut Vodka', img_url: 'https://img.thewhiskyexchange.com/900/vodka_abs1.jpg', quantity:200, price: 22.95, category_id: 3)
Brand.create!(name: 'Skyy Passion Fruit Vodka', img_url: 'https://img.thewhiskyexchange.com/900/vodka_sky8.jpg', quantity:200, price: 25.95, category_id: 3)

Brand.create!(name: 'Jameson', img_url: 'https://vinepair.com/wp-content/uploads/2018/08/PopularWhiskey_Internal_Jameson.png', quantity:200, price: 25.95, category_id: 4)
Brand.create!(name: 'Jim Bean', img_url: 'https://vinepair.com/wp-content/uploads/2018/08/PopularWhiskey_Internal_JimBeam.png', quantity:200, price: 30.95, category_id: 4)
Brand.create!(name: 'Jack Daniels', img_url: 'https://vinepair.com/wp-content/uploads/2018/08/PopularWhiskey_Internal_Jack.png', quantity:200, price: 35.95, category_id: 4)

Brand.create!(name: 'Remy Martin', img_url: 'https://cdn.luxe.digital/media/2020/05/28160825/best-brandy-cognac-brands-remy-martin-luxe-digital%402x.jpg', quantity:200, price: 40.95, category_id: 5)
Brand.create!(name: 'Hennessy XO', img_url: 'https://cdn.luxe.digital/media/2020/05/28160800/best-brandy-cognac-brands-hennessy-luxe-digital%402x.jpg', quantity:200, price: 45.95, category_id: 5)
Brand.create!(name: 'Martel XO', img_url: 'https://cdn.luxe.digital/media/2020/05/28160820/best-brandy-cognac-brands-martell-luxe-digital%402x.jpg', quantity:200, price: 48.95, category_id: 5)


puts "Beer brand seeded"

# Brand.destroy_all
# Brand.create!([
#     {
#         name: 'Bud Light', img_url: 'https://wikiliq.org/wp-content/uploads/2021/02/Bud-Light.jpeg', quantity:200, price: 26.99, category_id: 1
#     }

   

    
# ])



