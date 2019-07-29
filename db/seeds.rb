# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: 'John Wick',
            password: 'password',
            email: 'babayaga@notupstack.co')

Doodle.create(path: "https://doodles.example.com/doodles/#{SecureRandom.hex}",
              description: 'Look what I can do with a pencil')

Doodle.create(path: "https://doodles.example.com/doodles/#{SecureRandom.hex}",
              description: 'This looks EXACTLY like my dog!')

Doodle.create(path: "https://doodles.example.com/doodles/#{SecureRandom.hex}",
              description: "My wife did this, she's a great doodler")
