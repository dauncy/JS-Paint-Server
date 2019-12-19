# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
challenge2_hash = {name: "coloring book page 1", description: "color in between the lines please", img_src:'https://www.crayola.com/-/media/Crayola/Coloring-Page/adultColoringPages/inSPIRALed.jpg?h=560&la=en&mh=560&mw=540&w=354' }
challenge2 = Challenge.create({name: "coloring book page 1", description: "color in between the lines please", img_src:'https://www.crayola.com/-/media/Crayola/Coloring-Page/adultColoringPages/inSPIRALed.jpg?h=560&la=en&mh=560&mw=540&w=354' })