# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

types = Type.create([
	{title:'Smartphone', description:'Mobile Device '},
	{title:'Laptop', description:'Mobile Computer'},
	{title:'Book', description:'Something to read'},
	{title:'Car', description:'Something to drive'},
	{title:'Miscellaneous', description:'Not in any of the given categories'}
	])



items = Item.create([ 
	{title:'Macbook Pro', description:'Macbook Pro', owner: '', type_id: 2}, 
	{title:'iPhone', description:'iPhone 5', owner:'', type_id: 1},
	{title:'iPod Touch', description:'Media Player', owner:'', type_id: 5},
	{title:'Moto X', description:'Best phone on the market', owner:'Sharat', type_id: 1},
	{title:'Thunderbolt Adapter', description:'HDMI to Thunderbolt', owner:'', type_id: 5},
	{title:'Cocaine', description:'Magic White Powder', owner:'', type_id: 5},
	{title:'Samsung TV', description:'Television', owner:'', type_id: 5},
	{title:'Iced Coffee', description:'Ice is missing', owner:'', type_id: 5},
	{title:'Bat Mobile', description:'Motor Vehicle', owner:'Batman', type_id: 4},
	{title:'Arc Reactor', description:'Magic self-generating energy device', owner:'Tony Stark', type_id: 5},
	{title:'Hammer', description:'Medeival hitting device', owner:'Thor', type_id: 5},
	{title:'Coke', description:'Drink. Not to be confused with Cocaine', owner:'', type_id: 5},
	{title:'Bose QC20i', description:'Expensive Headphones', owner:'', type_id: 5},
	{title:'Macbook Air', description:'Fits in a manilla envelope', owner:'', type_id: 2},
	{title:'Manilla Envelope', description:'Contains Macbook Air', owner:'', type_id: 5},
	{title:'North Face Fleece Jacket', description:'Someone is probably cold', owner:'', type_id: 5},
	{title:'Brandeis ID', description:'Cannot get into buildings without it', owner:'Sharat', type_id: 5},
	{title:'Axe Body Spray', description:'Someone must stink', owner:'', type_id: 5},
	{title:'Toyota Camry 1997', description:'Barely functional automobile', owner:'Sharat', type_id: 4},
	{title:'Cat in the Hat', description:"Children's book", owner:'', type_id: 3},
	{title:'Contact Lenses', description:'Someone is blind without these', owner:'', type_id: 5}
	])