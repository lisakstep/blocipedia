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
  password: 'helloworld',
  role: 'admin'
  )
admin.skip_confirmation!
admin.save!

standard_user = User.new(
  name: 'Standard Member',
  email: 'standard.member@example.com',
  password: 'helloworld',
  role: 'standard_member'
  )
standard_user.skip_confirmation!
standard_user.save!

paid_user = User.new(
  name: 'Paid Member',
  email: 'paid.member@example.com',
  password: 'helloworld',
  role: 'paid_member'
  )
paid_user.skip_confirmation!
paid_user.save!

puts "You have generated #{User.count} users."
users = User.all

# Create wikis
13.times do
  wiki = Wiki.create!(
    user: users.sample,
    title: Faker::Lorem.sentence,
    body: Faker::Lorem.paragraph    
    )
end
puts "You have generated #{Wiki.count} wikis."
wikis = Wiki.all
  
  
  
  
  
  