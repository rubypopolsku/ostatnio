user = User.create(email: "user1@example.dev", password: "password")

Item.create(name: Faker::Hobby.activity, user: user)
item = Item.create(name: Faker::Hobby.activity, user: user)

item.realizations.create(done_at: Time.zone.now)

Item.create(name: Faker::Hobby.activity, user: user).tap do |item|
  10.times do |i|
    item.realizations.create(done_at: Time.zone.now - i.minutes)
  end
end
