# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

units = Unit.create([{name: 'Rauma', displayname: 'Rauma'},{name: 'Pori', displayname: 'Pori'},{name: 'Raisio', displayname: 'Raisio'},{name: 'Turku', displayname: 'Turku'},{name: 'Hamppi', displayname: 'Hämppi'},{name: 'Kaukajarvi', displayname: 'Kaukajärvi'},{name: 'Lielahti', displayname: 'Lielahti'},{name: 'Jaahovi', displayname: 'Jäähovi'}])
dayparts = Daypart.create([{name: 'Aamu'}, {name: 'Päivä'}, {name: 'Ilta'}, {name: 'Yö'}])
User.new({
    firstname: "Toni",
    lastname: "Iltanen",
    email: "toni.iltanen@codecontrol.fi",
    password: 'mcdpass',
    password_confirmation: 'mcdpass',
    admin: true
}).save
