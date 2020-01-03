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

challenge_hash = {"Free Draw" => {img_src: "", song_src: "songs/gorillaz.mp3"}, 
                Playground: {img_src:"https://i.imgur.com/gbmtLB0.jpg", song_src: "songs/kicks.mp3"}, 
                "Wild West" => {img_src:"https://i.pinimg.com/originals/ed/a8/b9/eda8b9a286a7815b10919aa9b5399c6f.jpg", song_src: "songs/old.mp3"}, 
                Psychedelic: {img_src:"https://i.imgur.com/DdLVV0G.jpg", song_src:  "songs/lucid.mp3"},
                Kangaroo: {img_src:"https://i.imgur.com/HKLqZlb.png", song_src: "songs/kangaroo.mp3"},
                Firefly: {img_src:"https://i.imgur.com/yqCS4qe.jpg", song_src:  "songs/fireflies.mp3"},
                Rockstar: {img_src:"https://i.imgur.com/PR9zmf0.png", song_src: "songs/rockstar.mp3"},
                Dreams: {img_src:"https://i.imgur.com/2QBph5J.png", song_src: "songs/dreams.mp3"},
                Africa: {img_src:"https://i.imgur.com/mCRRPNS.jpg",song_src:  "songs/africa.mp3"}}

challenge_hash.each do |key, value|  
    # puts key
    # puts value
    Challenge.create(name: key, description: "Color in the lines", img_src: value[:img_src], song_src: value[:song_src])
end 


    