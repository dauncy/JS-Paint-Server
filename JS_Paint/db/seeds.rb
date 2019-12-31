# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# create_table "challenges", force: :cascade do |t|
#     t.string "name"
#     t.string "description"
#     t.string "img_src"
#   end

challenge_hash = {free_draw: "", 
                playground: "https://i.imgur.com/gbmtLB0.jpg", 
                wild_west: "https://i.pinimg.com/originals/ed/a8/b9/eda8b9a286a7815b10919aa9b5399c6f.jpg", 
                psychedelic: "https://i.imgur.com/DdLVV0G.jpg",
                kangaroo: "https://i.imgur.com/HKLqZlb.png",
                firefly: "https://i.imgur.com/yqCS4qe.jpg",
                rockstar: "https://i.imgur.com/PR9zmf0.png",
                dreams: "https://i.imgur.com/2QBph5J.png",
                africa: "https://i.imgur.com/mCRRPNS.jpg"}

challenge_hash.each do |key, value| 
    Challenge.create(name: key, description: "Color in the lines", img_src: value )
end 

    