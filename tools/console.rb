require_relative '../config/environment.rb'

# create your variables and/or write any tests here
steven = Tourist.new("steven")
nathan = Tourist.new("nathan")

eiffel_tower = Landmark.new("Eiffel Tower", "paris")
mt_rainier = Landmark.new("Mt. Rainier", "Seattle")
lighthouse = Landmark.new("Lighthouse", "portland")
half_dome = Landmark.new("Half dome", "Yosemite")

steven.visit_landmark(eiffel_tower)
steven.visit_landmark(lighthouse)

trip1 = Trip.new(steven, mt_rainier)

mt_rainier.new_trip_with(nathan)
lighthouse.new_trip_with(nathan)

# print Tourist.all
# print steven.name
# p Tourist.find_by_name("nathan")
# print steven.trips
# print steven.landmarks
# print steven.never_visited

# print Landmark.all
# print Landmark.find_by_city("seattle")
# print lighthouse.trips
# print mt_rainier.tourists

# print Trip.all
# print trip1.tourist
# print trip1.landmark