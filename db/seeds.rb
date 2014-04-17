require 'faker'
  
rand(4..10).times do
  password = Faker::Lorem.characters(10)
  u = User.new(
    name: Faker::Name.name, 
    email: Faker::Internet.email, 
    password: password, 
    password_confirmation: password)
  u.skip_confirmation!
  u.save


  rand(5..12).times do
    p = u.wikis.create(
      email: Faker::Internet.email, 
      title: Faker::Lorem.words(rand(1..10)).join(" "), 
      body: Faker::Lorem.paragraphs(rand(1..4)).join("\n"))

    # set the created_at to a time within the past year
    p.update_attribute(:created_at, Time.now - rand(600..31536000))


  end
end

u = User.new(email: 'example@gmail.com', 
            password: 'password', 
            password_confirmation: 'password'
            )
u.skip_confirmation!
u.save



if Plan.count == 0
   Plan.create!
end

puts "Seed finished"
puts "#{Wiki.count} wikis created"
puts "#{User.count} users created"

