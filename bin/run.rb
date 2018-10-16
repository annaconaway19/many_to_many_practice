require_relative '../config/environment.rb'

tourist1 = Tourist.new("Anna")
tourist2 = Tourist.new("Justin")
tourist3 = Tourist.new("Ashley")
tourist4 = Tourist.new("Paul")

landmark1 = Landmark.new("Washington Monument", "D.C.", tourist1)
landmark2 = Landmark.new("Empire State Building", "NYC", tourist2)
landmark3 = Landmark.new("Eiffel Tower", "Paris", tourist3)
landmark4 = Landmark.new("Great Wall", "Beijing", tourist4)

trip1 = Trip.new(tourist1, landmark1)
trip2 = Trip.new(tourist2, landmark2)
trip3 = Trip.new(tourist3, landmark3)
trip4 = Trip.new(tourist4, landmark4)

binding.pry
0
