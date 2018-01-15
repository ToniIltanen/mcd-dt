# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

units = Unit.create([{name: 'Rauma'},{name: 'Pori'},{name: 'Raisio'},{name: 'Turku'},{name: 'Hämppi'},{name: 'Kaukajärvi'},{name: 'Lielahti'},{name: 'Jäähovi'}])
dayparts = Daypart.create([{name: 'Aamu'}, {name: 'Päivä'}, {name: 'Ilta'}, {name: 'Yö'}])