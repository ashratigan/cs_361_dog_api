# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'dog_breeds.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')

csv.each do |row|
  d = Dog.new
  d.name = row['name']
  d.country = row['country']
  d.url = row['url']
  d.image = row['image']
  d.pdf = row['pdf']
  d.save
end

puts "There are now #{Dog.count} rows in the dogs table"