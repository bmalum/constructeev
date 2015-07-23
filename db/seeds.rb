# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


channels = Channel.order(:created_at).take(60)
16000.times do
  content = Faker::Lorem.sentence(5)
  channels.each { |channel| channel.feedbacks.create!(content: content) }
end