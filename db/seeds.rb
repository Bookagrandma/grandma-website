# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

csv = CSV.parse(File.read(Rails.root.join('db', 'bdd_ehpad.csv')), :headers => true)
csv.each do |row|
 Etablissement.create(name: row['name'], address: row['address'], zip: row['zip'], city: row['city'], dept: row['dept'], category: row['category'], email: row['email'], phone: row['phone'], password: row['password']).save
puts row.to_hash
end