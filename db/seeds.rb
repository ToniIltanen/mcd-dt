# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

units = Unit.create([{name: 'Rauma', displayname: 'Rauma', goal: 120},{name: 'Pori', displayname: 'Pori', goal: 120},{name: 'Raisio', displayname: 'Raisio', goal: 120},{name: 'Turku', displayname: 'Turku', goal: 120},{name: 'Hamppi', displayname: 'Hämppi', goal: 120},{name: 'Kaukajarvi', displayname: 'Kaukajärvi', goal: 120},{name: 'Lielahti', displayname: 'Lielahti', goal: 120},{name: 'Jaahovi', displayname: 'Jäähovi', goal: 120}])
dayparts = Daypart.create([{name: 'Aamu'}, {name: 'Päivä'}, {name: 'Ilta'}, {name: 'Yö'}])
User.new({
    firstname: "Toni",
    lastname: "Iltanen",
    email: "toni.iltanen@codecontrol.fi",
    password: 'mcdpass',
    password_confirmation: 'mcdpass',
    admin: true
}).save
