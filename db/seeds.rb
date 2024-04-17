# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
User.create(email: "jimmygrahamdavid@gmail.com", name: Jim, password: "password", password_confirmation: "password")
User.create(email: "john@test.com", name: Jon, password: "password", password_confirmation: "password")


10.times do |i|
  Post.create!(title: "Post #{i}", body: "This is the body of post #{i}", user_id: User.first.id)
end
