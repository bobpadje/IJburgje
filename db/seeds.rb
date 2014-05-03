# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#

u = User.create :email => 'jrdnsalazar@gmail.com', :name => 'Jordan Salazar'
u.save
u = User.create :email => 'bobpadje@gmail.com', :name => 'Bob van t Padje'
u.save
u = User.create :email => 'cassetproductions@gmail.com', :name => 'Nick Zwaans'
u.save
u = User.create :email => 'r-h_rami@live.nl', :name => 'Rami Haddad'
u.save
u = User.create :email => 'christiaanwalters@gmail.com', :name => 'Christiaan Walters'
u.save
