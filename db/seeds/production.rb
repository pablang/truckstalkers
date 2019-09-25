
require "json"

# Load the trucks JSON fixture and create the trucks
trucks_fixture = File.read("db/fixtures/trucks.json")
trucks_details = JSON.parse(trucks_fixture)

trucks_details.each do |truck|
  Truck.create(truck)
end

# Load the photos JSON fixture and create them after finding their truck
photos_fixtures = File.read("db/fixtures/photos.json")
photos_details = JSON.parse(photos_fixtures)

photos_details.each do |z_id, photos_array|
  truck = Truck.find_by(z_id: z_id)
  if truck != nil
    photos = []

    photos_array.each do |photo|
      photos << {
        truck_id: truck.id,
        path: "/img/trucks/#{z_id}/#{photo}",
        is_logo: false
      }
    end

    photos.each do |t|
      Photo.create(t)
    end
  end
end

users = [
  { name: 'Pammy',
    email: 'pammy@example.com',
    password: 'abcd'
  },
  { name: 'Miguel',
    email: 'miguel@example.com',
    password: 'abcd'
  },
  { name: 'Frankie',
    email: 'frankie@example.com',
    password: 'abcd'
  },
]

users.each do |t|
  User.create(t)
end

# Photo.all.each do |img|
#   img.is_feature = false  if not img.path.include?('featured')
#   img.save
# end