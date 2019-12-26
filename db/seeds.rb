# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Company.create(name: "Square Enix", platform: "Playstation 4", logo: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/af/Square_Enix_logo.svg/760px-Square_Enix_logo.svg.png",user_id:1)
Company.create(name: "NIS America", platform: "Playstation 4", logo: "https://thumbnails.pcgamingwiki.com/a/aa/NIS_America_-_Logo.png/300px-NIS_America_-_Logo.png",user_id:1)


Game.create(company_id: 1, title:"Final Fantasy XV", genre: "Action-Adventure", cover:"https://vignette.wikia.nocookie.net/finalfantasy/images/2/25/FFXV_logo.png",status:true)
Game.create(company_id: 2, title:"Disgaea 5", genre: "Tactical RPG", cover:"https://img.favpng.com/8/23/20/disgaea-5-disgaea-4-playstation-4-video-game-nippon-ichi-software-png-favpng-4rQaVRBQu5PfjXCfmGFLcTL74.jpg",status:true)
