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

Booking.destroy_all
User.destroy_all
Personality.destroy_all

personalities = [
  "Architect (INTJ)",
  "Logician (INTP)",
  "Commander (ENTJ)",
  "Debater (ENTP)",
  "Advocate (INFJ)",
  "Mediator (INFP)",
  "Protagonist (ENFJ)",
  "Campaigner (ENFP)",
  "Logistician (ISTJ)",
  "Defender (ISFJ)",
  "Executive (ESTJ)",
  "Consul (ESFJ)",
  "Virtuoso (ISTP)",
  "Adventurer (ISFP)",
  "Entrepreneur (ESTP)",
  "Entertainer (ESFP)"
]

descriptions = [
  "Thought constitutes the greatness of man. Man is a reed, the feeblest thing in nature, but he is a thinking reed.",
  "The important thing is not to stop questioning. Curiosity has its own reason for existence.",
  "Your time is limited, so don’t waste it living someone else’s life.",
  "Follow the path of the unsafe, independent thinker. Expose your ideas to the dangers of controversy.",
  "Treat people as if they were what they ought to be and you help them to become what they are capable of being.",
  "All that is gold does not glitter; not all those who wander are lost; the old that is strong does not wither; deep roots are not reached by the frost.",
  "When the whole world is silent, even one voice becomes powerful.",
  "It doesn’t interest me what you do for a living. I want to know what you ache for – and if you dare to dream of meeting your heart’s longing.",
  "I’d be more frightened by not using whatever abilities I’d been given. I’d be more frightened by procrastination and laziness.",
  "Love only grows by sharing. You can only have more for yourself by giving it away to others.",
  "Good order is the foundation of all things.",
  "Encourage, lift, and strengthen one another. For the positive energy spread to one will be felt by us all.",
  "I wanted to live the life, a different life. I didn’t want to go to the same place every day and see the same people and do the same job. I wanted interesting challenges.",
  "I change during the course of a day. I wake and I’m one person, and when I go to sleep I know for certain I’m somebody else.",
  "Life is either a daring adventure or nothing at all.",
  "Live for each second without hesitation."
]

# codes = [
#   "ISTJ", "ISFJ", "INFJ", "INTJ",
#   "ISTP", "ISFP", "INFP", "INTP",
#   "ESTP", "ESFP", "ENFP", "ENTP",
#   "ESTJ", "ESFJ", "ENFJ", "ENTJ"
# ]

codes = [
  "INTJ",
  "INTP",
  "ENTJ",
  "ENTP",
  "INFJ",
  "INFP",
  "ENFJ",
  "ENFP",
  "ISTJ",
  "ISFJ",
  "ESTJ",
  "ESFJ",
  "ISTP",
  "ISFP",
  "ESTP",
  "ESFP"
]

(0..15).each do |num|
  Personality.create(name: personalities[num], description: descriptions[num], code: codes[num], price: Faker::Number.between(from: 100, to: 1000))
end

20.times do
  user = User.new(
    email: Faker::Internet.email,
    password: "123456",
    personality: Personality.all.sample
  )

  user.save!
end
