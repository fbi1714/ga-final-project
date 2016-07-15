# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all

fabio = User.create :name => "Fabio", :email => 'fabio@ga.co', :password => 'chicken', :password_confirmation => 'chicken'

Order.destroy_all

metabo = Order.create :description => "Metabo", :order_number => "90242775"
belga = Order.create :description => "Belga", :order_number => "90142554"

Item.destroy_all

Drawer.destroy_all

Part.destroy_all
