# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# song1= Song.new(title:"suno re", artist:"singh", rating:4)
# song1.save

song2= Song.new(title:"dil dooba", artist:"harihar", rating:7)
song2.save
song3= Song.new(title:"Aaja", artist:"ram", rating:8)
song3.save