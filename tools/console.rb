require_relative '../config/environment.rb'

# create your variables and/or write any tests here
steven = Tourist.new("steven")
nathan = Tourist.new("nathan")

eiffel_tower = Landmark.new("Eiffel Tower", "paris")
mt_rainier = Landmark.new("Mt. Rainier", "Seattle")
lighthouse = Landmark.new("Lighthouse", "portland")

steven.visit_landmark(eiffel_tower)
steven.visit_landmark(lighthouse)

mt_rainier.new_trip_with(nathan)
lighthouse.new_trip_with(nathan)

binding.pry
