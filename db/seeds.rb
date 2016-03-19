# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
paul, alia, leto = User.create([
  {name: 'Paul Atreides',  email: 'paul@arrakis.com', password: 'ironhack', password_confirmation: 'ironhack'},
  {name: 'Alia Atreides',  email: 'alia@arrakis.com',  password: 'ironhack', password_confirmation: 'ironhack'},
  {name: 'Leto Atreides', email: 'leto@arrakis.com',  password: 'ironhack', password_confirmation: 'ironhack'}
])

ruby = Skill.create(name: "Ruby")
php = Skill.create(name: "PHP")
css = Skill.create(name: "CSS")

paul.skills << [css, php]
alia.skills << ruby

coding = Job.create(title: "Coding", owner_user_id: paul.id, hired_user_id: alia.id, deadline: Date.tomorrow)
design = Job.create(title: "Design", owner_user_id: leto.id, hired_user_id: paul.id, deadline: Date.tomorrow)

coding.skills << ruby
design.skills << css

puts "Seeds complete!"