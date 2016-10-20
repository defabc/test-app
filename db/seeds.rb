# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!([
   {
    id: 7,
    provider: "twitter",
    uid: "7373294423267841",
    image_url: "http://pbs.twimg.com/profile_images/749348e",
    nickname: "ahou"},
   {
    id: 12,
    provider: "twitter",
    uid: "1373294423267842",
    image_url: "http://pbs.twimg.com/profile_images/749sssssss",
    nickname: "a" * 100
   }
])
