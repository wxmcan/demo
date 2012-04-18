# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Refinery::Pages::Engine.load_seed
su = Role.create(:title=>"Superuser")
re = Role.create(:title=>"Refinery")

User.create(:username => 'bob', :email => 'bob.wang@beltal.com', :password => '1234qaz')
su = Role.first
re = Role.last
me = User.first #created above to test devise
me.roles << su
me.roles << re
me.save!
