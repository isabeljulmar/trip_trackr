
Trip.create(trip_name: "Kessel Run", trip_duration: 11)
Trip.create(trip_name: "Return of the Jedi", trip_duration: 25)
Trip.create(trip_name: "Chewbacca's Magic Miracle Cruise", trip_duration: 2)


Location.create(name: Faker::StarWars.planet, address: Faker::Space.nebula, trip_id: 1)
Location.create(name: Faker::StarWars.planet, address: Faker::Space.nebula, trip_id: 1)
Location.create(name: Faker::StarWars.planet, address: Faker::Space.nebula, trip_id: 1)

Location.create(name: Faker::StarWars.planet, address: Faker::Space.nebula, trip_id: 2)
Location.create(name: Faker::StarWars.planet, address: Faker::Space.nebula, trip_id: 2)
Location.create(name: Faker::StarWars.planet, address: Faker::Space.nebula, trip_id: 2)

Location.create(name: Faker::StarWars.planet, address: Faker::Space.nebula, trip_id: 3)
Location.create(name: Faker::StarWars.planet, address: Faker::Space.nebula, trip_id: 3)
Location.create(name: Faker::StarWars.planet, address: Faker::Space.nebula, trip_id: 3)
