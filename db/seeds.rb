# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all

fabio = User.create :name => "Fabio", :email => 'fabio@ga.co', :password => 'chicken', :password_confirmation => 'chicken'
jonesy = User.create :name => "Jonesy", :email => 'jonesy@ga.co', :password => 'chicken', :password_confirmation => 'chicken'

Order.destroy_all

algol = Order.create :description => "Algol", :order_number => "90133421"
laos = Order.create :description => "Laos", :order_number => "90121373"
mimi = Order.create :description => "Mimi", :order_number => "90122332"
