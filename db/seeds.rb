require 'faker'

# Create users
4.times do 
  user = User.new(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Lorem.characters(10)
  )
  user.skip_confirmation!
  user.save!
end

admin = User.new(
  name: 'Admin User',
  email: 'admin@example.com',
  password: 'helloworld'
  )
admin.skip_confirmation!
admin.save!

normal_user = User.new(
  name: 'Normal User',
  email: 'normal.user@example.com',
  password: 'helloworld'
  )
normal_user.skip_confirmation!
normal_user.save!

puts "You have generated #{User.count} users."
users = User.all

# Create wikis
23.times do
  wiki = Wiki.create!(
    user: users.sample,
    title: Faker::Lorem.sentence,
    body: Faker::Lorem.paragraph    
    )
end
puts "You have generated #{Wiki.count} wikis."
wikis = Wiki.all
  
  
  
  
  
  