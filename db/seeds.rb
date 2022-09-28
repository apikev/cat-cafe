Cat.delete_all 
User.delete_all 

i = 1 
5.times do 
  @user = User.create(
    email: "test#{i}@email.com",
    password: "password",
    fname: "test#{i}",
    lname: "testing#{i}"
  )
  i++

  10.times do 
    name = Faker::Creature::Cat.name
    Cat.create(
      name: name, 
      breed: Faker::Creature::Cat.breed, 
      registry: Faker::Creature::Cat.registry, 
      avatar: Faker::Avatar.image(slug: 'cat', size: '100x400', format: 'png', set: 'set4'),
      user_id: @user.id
    )
  end 
end

puts Cat.all.count 