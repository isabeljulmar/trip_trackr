
Trip.create(trip_name: "Kessel Run", trip_duration: 11)
Trip.create(trip_name: "Return of the Jedi", trip_duration: 25)
Trip.create(trip_name: "Chewbacca's Magic Miracle Cruise", trip_duration: 2)
Trip.create(trip_name: "Boba Fett's Yoga Retreat", trip_duration: 7)
Trip.create(trip_name: "AT-AT Safari", trip_duration: 13)
Trip.create(trip_name: "Gungan Hunting Trip", trip_duration: 10)
Trip.create(trip_name: "Jabba The Hutt's Nude Beach Tour", trip_duration: 39)
Trip.create(trip_name: "Ewok Cuddle Party", trip_duration: 12)

rand(5..9).times do
  Location.create(name: Faker::StarWars.planet, address: Faker::Space.nebula, trip_id: 1)
end
rand(5..9).times do
  Location.create(name: Faker::StarWars.planet, address: Faker::Space.nebula, trip_id: 2)
end
rand(5..9).times do
  Location.create(name: Faker::StarWars.planet, address: Faker::Space.nebula, trip_id: 3)
end
rand(5..9).times do
  Location.create(name: Faker::StarWars.planet, address: Faker::Space.nebula, trip_id: 4)
end
rand(5..9).times do
  Location.create(name: Faker::StarWars.planet, address: Faker::Space.nebula, trip_id: 5)
end
rand(5..9).times do
  Location.create(name: Faker::StarWars.planet, address: Faker::Space.nebula, trip_id: 6)
end
rand(5..9).times do
  Location.create(name: Faker::StarWars.planet, address: Faker::Space.nebula, trip_id: 7)
end



9.times do
  Location.create(name: Faker::StarWars.planet, address: Faker::Space.nebula, trip_id: nil)
end
