# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Medicine.destroy_all

Medicine.create!([{
	name: "Tylenol Regular Strength",
	walmart_price: 6.97,
	cvs_price: 9.79,
	walgreens_price: 9.79,
	riteaid_price: 9.79,
	generic: "Acetaminophen"
},

{
	name: "Tylenol Extra Strength",
	walmart_price: 14.97,
	cvs_price: 10.79,
	walgreens_price: 17.99,
	riteaid_price: 9.79,
	generic: "Extra Strength Acetaminophen "
},	
{
	name: "Acetaminophen",
	walmart_price: 6.97,
	cvs_price: 9.79,
	walgreens_price: 9.79,
	riteaid_price: 9.79,
	generic: "N/A"
},

{
	name: "Extra Strength Acetaminophen",
	walmart_price: 8.23,
	cvs_price: 9.79,
	walgreens_price: 7.29,
	riteaid_price: 9.79,
	generic: "N/A"

}])