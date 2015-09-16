case Rails.env
when "development"
# Users
User.create!(name:  "Example User",
             email: "example@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true,
             activated: true,
             activated_at: Time.zone.now)

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password,
               activated: true,
               activated_at: Time.zone.now)
end

# Events
# users = User.order(:created_at).take(6)
# 50.times do
#   title = Faker::Lorem.sentence(1)
#   date_start = Faker::Date.between(Date.today, 20.days.from_now)
#   time_start_hour = Faker::Number.between(0, 23)
#   time_start_minute = 30
#   court_id = Faker::Number.between(1, 3)
#   house_id = Faker::Number.between(1, 2)
#   category_id = Faker::Number.between(1, 3)
#   content = Faker::Lorem.sentence(5)
#   users.each { |user| user.events.create!(
#     title: title,
#     date_start: date_start,
#     time_start_hour: time_start_hour,
#     time_start_minute: time_start_minute,
#     court_id: court_id,
#     house_id: house_id,
#     category_id: category_id,
#     content: content
#     ) }
# end

# Following relationships
# users = User.all
# user  = users.first
# following = users[2..50]
# followers = users[3..40]
# following.each { |followed| user.follow(followed) }
# followers.each { |follower| follower.follow(user) }

# Court and house
Court.create(name: "Ainsty") # court_id = 1
House.create(name: "Ainsty A Flat 1", court_id: 1)
House.create(name: "Ainsty A Flat 2", court_id: 1)
House.create(name: "Ainsty A Flat 3", court_id: 1)
House.create(name: "Ainsty A Flat 4", court_id: 1)
House.create(name: "Ainsty A Flat 5", court_id: 1)
House.create(name: "Ainsty A Flat 6", court_id: 1)
House.create(name: "Ainsty B Flat 1", court_id: 1)
House.create(name: "Ainsty B Flat 2", court_id: 1)
House.create(name: "Ainsty B Flat 3", court_id: 1)
House.create(name: "Ainsty B Flat 4", court_id: 1)
House.create(name: "Ainsty B Flat 5", court_id: 1)
House.create(name: "Ainsty B Flat 6", court_id: 1)
House.create(name: "Ainsty C Flat 1", court_id: 1)
House.create(name: "Ainsty C Flat 2", court_id: 1)
House.create(name: "Ainsty C Flat 3", court_id: 1)
House.create(name: "Ainsty C Flat 4", court_id: 1)
House.create(name: "Ainsty C Flat 5", court_id: 1)
House.create(name: "Ainsty C Flat 6", court_id: 1)
House.create(name: "Ainsty D Flat 1", court_id: 1)
House.create(name: "Ainsty D Flat 2", court_id: 1)
House.create(name: "Ainsty D Flat 3", court_id: 1)
House.create(name: "Ainsty D Flat 4", court_id: 1)
House.create(name: "Ainsty D Flat 5", court_id: 1)
House.create(name: "Ainsty D Flat 6", court_id: 1)
House.create(name: "Ainsty ALL", court_id: 1)

Court.create(name: "Hickleton") # court_id = 2
House.create(name: "Hickleton A Flat 1", court_id: 2)
House.create(name: "Hickleton A Flat 3", court_id: 2)
House.create(name: "Hickleton A Flat 5", court_id: 2)
House.create(name: "Hickleton B Flat 1", court_id: 2)
House.create(name: "Hickleton B Flat 2", court_id: 2)
House.create(name: "Hickleton B Flat 3", court_id: 2)
House.create(name: "Hickleton B Flat 4", court_id: 2)
House.create(name: "Hickleton B Flat 5", court_id: 2)
House.create(name: "Hickleton B Flat 6", court_id: 2)
House.create(name: "Hickleton C Flat 1", court_id: 2)
House.create(name: "Hickleton C Flat 2", court_id: 2)
House.create(name: "Hickleton C Flat 3", court_id: 2)
House.create(name: "Hickleton C Flat 4", court_id: 2)
House.create(name: "Hickleton C Flat 5", court_id: 2)
House.create(name: "Hickleton C Flat 6", court_id: 2)
House.create(name: "Hickleton D Flat 1", court_id: 2)
House.create(name: "Hickleton D Flat 3", court_id: 2)
House.create(name: "Hickleton D Flat 5", court_id: 2)
House.create(name: "Hickleton ALL", court_id: 2)

Court.create(name: "Ingram") # court_id = 3
House.create(name: "Ingram A", court_id: 3)
House.create(name: "Ingram B", court_id: 3)
House.create(name: "Ingram C", court_id: 3)
House.create(name: "Ingram D", court_id: 3)
House.create(name: "Ingram E", court_id: 3)
House.create(name: "Ingram F", court_id: 3)
House.create(name: "Ingram G", court_id: 3)
House.create(name: "Ingram H", court_id: 3)
House.create(name: "Ingram I", court_id: 3)
House.create(name: "Ingram J", court_id: 3)
House.create(name: "Ingram K", court_id: 3)
House.create(name: "Ingram ALL", court_id: 3)

Court.create(name: "Irwin") # court_id = 4
House.create(name: "Irwin A", court_id: 4)
House.create(name: "Irwin B", court_id: 4)
House.create(name: "Irwin ALL", court_id: 4)

Court.create(name: "Lindley") # court_id = 5
House.create(name: "Lindley A", court_id: 5)
House.create(name: "Lindley B", court_id: 5)
House.create(name: "Lindley C", court_id: 5)
House.create(name: "Lindley D", court_id: 5)
House.create(name: "Lindley E", court_id: 5)
House.create(name: "Lindley F", court_id: 5)
House.create(name: "Lindley G", court_id: 5)
House.create(name: "Lindley H", court_id: 5)
House.create(name: "Lindley I", court_id: 5)
House.create(name: "Lindley J", court_id: 5)
House.create(name: "Lindley K", court_id: 5)
House.create(name: "Lindley ALL", court_id: 5)

Court.create(name: "St.Lawrence") # court_id = 6
House.create(name: "St.Lawrence A", court_id: 6)
House.create(name: "St.Lawrence B", court_id: 6)
House.create(name: "St.Lawrence C", court_id: 6)
House.create(name: "St.Lawrence D", court_id: 6)
House.create(name: "St.Lawrence E", court_id: 6)
House.create(name: "St.Lawrence F", court_id: 6)
House.create(name: "St.Lawrence G", court_id: 6)
House.create(name: "St.Lawrence H", court_id: 6)
House.create(name: "St.Lawrence I", court_id: 6)
House.create(name: "St.Lawrence J", court_id: 6)
House.create(name: "St.Lawrence K", court_id: 6)
House.create(name: "St.Lawrence L", court_id: 6)
House.create(name: "St.Lawrence M", court_id: 6)
House.create(name: "St.Lawrence ALL", court_id: 6)

Court.create(name: "Wood") # court_id = 7
House.create(name: "Wood A", court_id: 7)
House.create(name: "Wood B", court_id: 7)
House.create(name: "Wood C", court_id: 7)
House.create(name: "Wood D", court_id: 7)
House.create(name: "Wood E", court_id: 7)
House.create(name: "Wood F", court_id: 7)
House.create(name: "Wood G", court_id: 7)
House.create(name: "Wood H", court_id: 7)
House.create(name: "Wood I", court_id: 7)
House.create(name: "Wood J", court_id: 7)
House.create(name: "Wood K", court_id: 7)
House.create(name: "Wood L", court_id: 7)
House.create(name: "Wood ALL", court_id: 7)

Court.create(name: "Younger") # court_id = 8
House.create(name: "Younger A", court_id: 8)
House.create(name: "Younger B", court_id: 8)
House.create(name: "Younger C", court_id: 8)
House.create(name: "Younger D", court_id: 8)
House.create(name: "Younger E", court_id: 8)
House.create(name: "Younger F", court_id: 8)
House.create(name: "Younger G", court_id: 8)
House.create(name: "Younger H", court_id: 8)
House.create(name: "Younger ALL", court_id: 8)

Court.create(name: "JJ's") # court_id = 9
House.create(name: "JJ's Main", court_id: 9)
House.create(name: "JJ's GCR", court_id: 9)

Court.create(name: "College") # court_id = 10
House.create(name: "College Sports Field", court_id: 10)
House.create(name: "College Family Houses", court_id: 10)

Category.create(name: "College")
Category.create(name: "Social")
Category.create(name: "Sports")
Category.create(name: "Study")
Category.create(name: "Others")

when "production"

Court.create(name: "Ainsty") # court_id = 1
House.create(name: "Ainsty A Flat 1", court_id: 1)
House.create(name: "Ainsty A Flat 2", court_id: 1)
House.create(name: "Ainsty A Flat 3", court_id: 1)
House.create(name: "Ainsty A Flat 4", court_id: 1)
House.create(name: "Ainsty A Flat 5", court_id: 1)
House.create(name: "Ainsty A Flat 6", court_id: 1)
House.create(name: "Ainsty B Flat 1", court_id: 1)
House.create(name: "Ainsty B Flat 2", court_id: 1)
House.create(name: "Ainsty B Flat 3", court_id: 1)
House.create(name: "Ainsty B Flat 4", court_id: 1)
House.create(name: "Ainsty B Flat 5", court_id: 1)
House.create(name: "Ainsty B Flat 6", court_id: 1)
House.create(name: "Ainsty C Flat 1", court_id: 1)
House.create(name: "Ainsty C Flat 2", court_id: 1)
House.create(name: "Ainsty C Flat 3", court_id: 1)
House.create(name: "Ainsty C Flat 4", court_id: 1)
House.create(name: "Ainsty C Flat 5", court_id: 1)
House.create(name: "Ainsty C Flat 6", court_id: 1)
House.create(name: "Ainsty D Flat 1", court_id: 1)
House.create(name: "Ainsty D Flat 2", court_id: 1)
House.create(name: "Ainsty D Flat 3", court_id: 1)
House.create(name: "Ainsty D Flat 4", court_id: 1)
House.create(name: "Ainsty D Flat 5", court_id: 1)
House.create(name: "Ainsty D Flat 6", court_id: 1)
House.create(name: "Ainsty ALL", court_id: 1)

Court.create(name: "Hickleton") # court_id = 2
House.create(name: "Hickleton A Flat 1", court_id: 2)
House.create(name: "Hickleton A Flat 3", court_id: 2)
House.create(name: "Hickleton A Flat 5", court_id: 2)
House.create(name: "Hickleton B Flat 1", court_id: 2)
House.create(name: "Hickleton B Flat 2", court_id: 2)
House.create(name: "Hickleton B Flat 3", court_id: 2)
House.create(name: "Hickleton B Flat 4", court_id: 2)
House.create(name: "Hickleton B Flat 5", court_id: 2)
House.create(name: "Hickleton B Flat 6", court_id: 2)
House.create(name: "Hickleton C Flat 1", court_id: 2)
House.create(name: "Hickleton C Flat 2", court_id: 2)
House.create(name: "Hickleton C Flat 3", court_id: 2)
House.create(name: "Hickleton C Flat 4", court_id: 2)
House.create(name: "Hickleton C Flat 5", court_id: 2)
House.create(name: "Hickleton C Flat 6", court_id: 2)
House.create(name: "Hickleton D Flat 1", court_id: 2)
House.create(name: "Hickleton D Flat 3", court_id: 2)
House.create(name: "Hickleton D Flat 5", court_id: 2)
House.create(name: "Hickleton ALL", court_id: 2)

Court.create(name: "Ingram") # court_id = 3
House.create(name: "Ingram A", court_id: 3)
House.create(name: "Ingram B", court_id: 3)
House.create(name: "Ingram C", court_id: 3)
House.create(name: "Ingram D", court_id: 3)
House.create(name: "Ingram E", court_id: 3)
House.create(name: "Ingram F", court_id: 3)
House.create(name: "Ingram G", court_id: 3)
House.create(name: "Ingram H", court_id: 3)
House.create(name: "Ingram I", court_id: 3)
House.create(name: "Ingram J", court_id: 3)
House.create(name: "Ingram K", court_id: 3)
House.create(name: "Ingram ALL", court_id: 3)

Court.create(name: "Irwin") # court_id = 4
House.create(name: "Irwin A", court_id: 4)
House.create(name: "Irwin B", court_id: 4)
House.create(name: "Irwin ALL", court_id: 4)

Court.create(name: "Lindley") # court_id = 5
House.create(name: "Lindley A", court_id: 5)
House.create(name: "Lindley B", court_id: 5)
House.create(name: "Lindley C", court_id: 5)
House.create(name: "Lindley D", court_id: 5)
House.create(name: "Lindley E", court_id: 5)
House.create(name: "Lindley F", court_id: 5)
House.create(name: "Lindley G", court_id: 5)
House.create(name: "Lindley H", court_id: 5)
House.create(name: "Lindley I", court_id: 5)
House.create(name: "Lindley J", court_id: 5)
House.create(name: "Lindley K", court_id: 5)
House.create(name: "Lindley ALL", court_id: 5)

Court.create(name: "St.Lawrence") # court_id = 6
House.create(name: "St.Lawrence A", court_id: 6)
House.create(name: "St.Lawrence B", court_id: 6)
House.create(name: "St.Lawrence C", court_id: 6)
House.create(name: "St.Lawrence D", court_id: 6)
House.create(name: "St.Lawrence E", court_id: 6)
House.create(name: "St.Lawrence F", court_id: 6)
House.create(name: "St.Lawrence G", court_id: 6)
House.create(name: "St.Lawrence H", court_id: 6)
House.create(name: "St.Lawrence I", court_id: 6)
House.create(name: "St.Lawrence J", court_id: 6)
House.create(name: "St.Lawrence K", court_id: 6)
House.create(name: "St.Lawrence L", court_id: 6)
House.create(name: "St.Lawrence M", court_id: 6)
House.create(name: "St.Lawrence ALL", court_id: 6)

Court.create(name: "Wood") # court_id = 7
House.create(name: "Wood A", court_id: 7)
House.create(name: "Wood B", court_id: 7)
House.create(name: "Wood C", court_id: 7)
House.create(name: "Wood D", court_id: 7)
House.create(name: "Wood E", court_id: 7)
House.create(name: "Wood F", court_id: 7)
House.create(name: "Wood G", court_id: 7)
House.create(name: "Wood H", court_id: 7)
House.create(name: "Wood I", court_id: 7)
House.create(name: "Wood J", court_id: 7)
House.create(name: "Wood K", court_id: 7)
House.create(name: "Wood L", court_id: 7)
House.create(name: "Wood ALL", court_id: 7)

Court.create(name: "Younger") # court_id = 8
House.create(name: "Younger A", court_id: 8)
House.create(name: "Younger B", court_id: 8)
House.create(name: "Younger C", court_id: 8)
House.create(name: "Younger D", court_id: 8)
House.create(name: "Younger E", court_id: 8)
House.create(name: "Younger F", court_id: 8)
House.create(name: "Younger G", court_id: 8)
House.create(name: "Younger H", court_id: 8)
House.create(name: "Younger ALL", court_id: 8)

Court.create(name: "JJ's") # court_id = 9
House.create(name: "JJ's Main", court_id: 9)
House.create(name: "JJ's GCR", court_id: 9)

Court.create(name: "College") # court_id = 10
House.create(name: "College Sports Field", court_id: 10)
House.create(name: "College Family Houses", court_id: 10)

Category.create(name: "College")
Category.create(name: "Social")
Category.create(name: "Sports")
Category.create(name: "Study")
Category.create(name: "Others")

end