# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Project.create!([
{
	name: "LarNes", 
	description: "A website for freelance work",
	target_pledge_amount: 1000.00,
	website: "larnes.com", 
	pledging_ends_on: "2018-02-01"
},
{
	name: "Profile WebSite", 
	description: "A Profile Website for displaying my profile", 
	target_pledge_amount: 500.00, 
	website: "fundmywebsite.com", 
	pledging_ends_on: "2018-05-01"
},
{
	 name: "Learning Site", 
	 description: "A Website to prmote learning wed design", 
	 target_pledge_amount: 2500.00,
	 website: "larnes/learning.com", 
	 pledging_ends_on: "2018-12-01"
}



	])