5.times do
  Trip.create(
    trip_name: Faker::StarWars.character,
    trip_duration: rand(1..31)
  )
end

20.times do
  Location.create(
            name: Faker::StarWars.planet,
            address: rand(1000..9999).to_s + Faker::StarWars.droid + " " + Faker::Space.nebula
          )
end
