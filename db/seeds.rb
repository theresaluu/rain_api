# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Ego.create!([
  { recognize: 'uncertainty', investigate: 'I fear that I am not being true to myself', nurtured: false },
  { recognize: 'relief', investigate: 'I am already on that path', nurtured: true },
  { recognize: 'longing', investigate: 'The ego is trying to convince me that things should be different', nurtured: true }
])
