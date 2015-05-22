User.create!(name:  "Patrick Schoeps",
             email: "pschoeps@umich.edu",
             password:              "foobar",
             password_confirmation: "foobar",
            )

6.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
              email: email,
              password:              password,
              password_confirmation: password,
           )
end

users = User.order(:created_at).take(6)
6.times do
  name = Faker::Name.name
  users.each { |user| user.groups.create!(name: name) }
  users.each { |user| user.groups.create!(teacher: name) }
end