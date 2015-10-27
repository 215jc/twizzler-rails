# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


users = User.create([
  { username: 'amberrose', password: 'password', email: 'amberrose@gmail.com', fname: 'Amber', lname: 'Rose', headline: 'I like Wiz Khalifa' }, 
  { username: 'justintimberlake', password: 'password', email: 'justintimberlake@gmail.com', fname: 'Justin', lname: 'Timberlake', headline: 'Im bringing sexy back' }, 
  { username: 'britneyspears', password: 'password', email: 'britneyspears@gmail.com', fname: 'Britney', lname: 'Spears', headline: 'Oops I did it again' }
])

twizzles = Twizzle.create([
  { user_id: 1, content: 'Twizzle 1 by Amber Rose' }, 
  { user_id: 1, content: 'Twizzle 2 by Amber Rose' }, 
  { user_id: 1, content: 'Twizzle 3 by Amber Rose' }, 
  { user_id: 2, content: 'Twizzle 1 by Justin Timberlake' }, 
  { user_id: 2, content: 'Twizzle 2 by Justin Timberlake' }, 
  { user_id: 2, content: 'Twizzle 3 by Justin Timberlake' }, 
  { user_id: 3, content: 'Twizzle 1 by Britney Spears' }, 
  { user_id: 3, content: 'Twizzle 2 by Britney Spears' }, 
  { user_id: 3, content: 'Twizzle 3 by Britney Spears' }
])

relationships = Relationship.create([
  { follower_id: 2, followed_id: 1 }, 
  { follower_id: 3, followed_id: 1 }, 
  { follower_id: 1, followed_id: 2 }, 
  { follower_id: 1, followed_id: 3 },
  { follower_id: 2, followed_id: 3 }
])