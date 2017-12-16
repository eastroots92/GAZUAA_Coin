# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

csv_text = File.read(Rails.root.join('lib','seed','coin.csv'))
csv = CSV.parse(csv_text, :headers =>true, :encoding => 'UTF-8')
csv.each do |row|
  t = Location.new
  t.name = row['name']
  t.stationNum = row['stationNum']
  t.lat = row['lat']
  t.long = row['long']
  t.save