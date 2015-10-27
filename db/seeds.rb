# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Post.create!(
	title: "Superstar",
	author: "Carly Rae Jepson",
	text: <<-eos.gsub(/\s+/," ").strip
	Jepson has been my music idol since I started writing songs back when I was 4.
	eos

)

Post.create!(
	title: "Basketball Idol",
	author: "Steve Nash",
	text: <<-eos.gsub(/\s+/, " ").strip
	Dude had moves nobody had ever seen. Breaking ankles.
	eos

)