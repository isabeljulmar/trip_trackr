20.times do

Location.create(
            name: Faker::LordOfTheRings.location,
            address: Faker::Address.street_address + " " + Faker::Address.city + " " + Faker::Address.state_abbr
          )
end
