5.times do

Trip.create(
  trip_name: Faker::StarWars.character,
  trip_duration: rand(1..31)
)
end


20.times do

Location.create(
            name: Faker::LordOfTheRings.location,
            address: Faker::Address.street_address + " " + Faker::Address.city + " " + Faker::Address.state_abbr
          )
end
