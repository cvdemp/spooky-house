Hobby1.create!(name: "Coloring")
Hobby1.create!(name: "Astrology")
Hobby1.create!(name: "Badminton")
Hobby1.create!(name: "Taxidermy")
Hobby1.create!(name: "Juggling")
Hobby1.create!(name: "Writing")
Hobby1.create!(name: "Botany")
Hobby1.create!(name: "Board Games")
Hobby1.create!(name: "Cooking")
Hobby1.create!(name: "Cryptography")
Hobby1.create!(name: "Magic")
Hobby1.create!(name: "Geocaching")

Hobby2.create!(name: "Macrame")
Hobby2.create!(name: "Fishing")
Hobby2.create!(name: "Golf")
Hobby2.create!(name: "Scuba Diving")
Hobby2.create!(name: "Origami")
Hobby2.create!(name: "Surfing")
Hobby2.create!(name: "Woodworking")
Hobby2.create!(name: "Cycling")
Hobby2.create!(name: "Curling")
Hobby2.create!(name: "Martial Arts")
Hobby2.create!(name: "Knife Making")
Hobby2.create!(name: "Weight Lifting")

User.create!(email: "user@user.com", password: "password")
Character.create!(name: "Professor Longfellow", birthday: "Tue 21 Jul 2015",
 user_id: 1, hobby1_id: 1, hobby2_id: 1)
