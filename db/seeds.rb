# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(email: "gonza@gmail.com",
            password: "123456",
            password_confirmation: "123456",
            admin: true)

Category.create!(heading: "Pizza", body:"It's so good", display: true)
Category.create!(heading: 'Pasta', body:"We cannoli do so much in each vide", display: true)
Category.create!(heading: "Desserts", body:"Rck Rails icecream", display: true)


25.times do |i|
    pizza = Product.new(
        category: Category.find(1),
        name: "pizza",
        description: "sadsadsadsa dasd asd  sdsdsd sda sdas das d asd",
        price: 11.99,
        catering: true  
    )

    pasta = Product.new(
        category: Category.find(2),
        name: "fideos",
        description: "sadsadsadsa dasd asd  sdsdsd sda sdas das d asd ssad",
        price: 45.99,
        catering: true  
    )

    dessert = Product.new(
        category: Category.find(3),
        name: "Ice cream",
        description: "sadsadsadsa dasd asd  sdsdsd sda sdas das dsaddsadassad",
        price: 22.99,
        catering: true  
    )

    pizza.image.attach(io: open('https://picsum.photos/1920/1080'), filename: "#{i}pizza_image.jpeg" )
    pasta.image.attach(io: open('https://picsum.photos/1920/1080'), filename: "#{i}pasta_image.jpeg" )
    dessert.image.attach(io: open('https://picsum.photos/1920/1080'), filename: "#{i}dessert_image.jpeg" )

    if i == 5
        pizza.featured = true
        pasta.featured = true
        dessert.featured = true
    end

    pizza.save
    pasta.save
    dessert.save
end