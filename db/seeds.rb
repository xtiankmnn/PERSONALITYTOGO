# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'faker'

personalities = [
  "Architect (INTJ)", "Logician (INTP)", "Commander (ENTJ)", "Debater (ENTP)",
  "Advocate (INFJ)", "Mediator (INFP)", "Protagonist (ENFJ)", "Campaigner (ENFP)",
  "Logistician (ISTJ)", "Defender (ISFJ)", "Executive (ESTJ)", "Consul (ESFJ)",
  "Virtuoso (ISTP)", "Adventurer (ISFP)", "Entrepreneur (ESTP)", "Entertainer (ESFP)"
]

personality_ids = []

personalities.each do |personality|
  personality = Personality.create(name: personality, description: Faker::Lorem.sentence, price: Faker::Number.between(from: 100, to: 1000))
  personality_ids << personality.id
end

20.times do
  user = User.new(
    email: Faker::Internet.email,
    password: "123456",
    personality_id: personality_ids.sample
  )

  user.save!
end
