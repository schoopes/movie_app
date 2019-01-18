# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# require 'ffaker'

# 10.times do
#   Actor.create(
#     first_name: FFaker::Name.first_name,
#     last_name: FFaker::Name.last_name,
#     known_for: FFaker::Movie.title
#     )
# end

Movie.create(
  title: "Honey I Shrunk the Kids",
  year: 1989,
  plot: "A scientist's children accidentally activate their father's shrink ray, which shrinks them to a 1/4 inch tall. When they are thrown out with the trash, they must brave the world at their new height to make it back home."
  )
Movie.create(
  title: "Love and Basketball",
  year: 2000,
  plot: "Two childhood friends aspire to become professional basketball players. Their friendship is hard to maintain as they both go after their dream. When they reconnect later in life, they find there is something more than friendship between them."
  )

Movie.create(
  title:"Moonrise Kingdom",
  year: 2012,
  plot: "Two twelve year olds fall in love and run away together in this quirky comedy. A storm approaches though, so the adults in town band together to find them before the disaster hits."
  )