# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.create(:name => "Brompton Type S", :description => "Fast, Fun and FOLDING!", :image_url => "type s.jpg", :price => "945.00")

Product.create(:name => "Brompton Type M", :description => "A Timeless British Classic", :image_url => "type m.jpg", :price => "970.00")

Product.create(:name => "Brompton Type H", :description => "Timeless British Classic--but TALLER", :image_url => "type h.jpg", :price => "1070.00")

Product.create(:name => "Brompton Type P", :description => "1 bike + 2 handlebar positions = FUN!", :image_url => "type p.jpg", :price => "1180.00")