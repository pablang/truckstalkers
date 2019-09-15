# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

trucks = [
  { name: 'Nom nom',
    bio: 'Cupcake ipsum dolor. Sit amet tootsie roll chocolate bar. Jelly-o jelly beans cotton candy jujubes croissant. Candy sweet chocolate cake bonbon jujubes sweet sweet roll chocolate bar.',
    tagline: 'Icing lollipop marzipan cake gingerbread halvah.',
    base_city: 'Melbourne',
    phone: '0404132123',
    email: 'pa@ga.co',
    website: 'www.nomnom.com',
    facebook: 'facebook.com/nomnom',
    twitter: '@nomnom',
    instagram: 'nomnom'
  },
  { name: 'Nom nom 2',
    bio: 'Cupcake ipsum dolor. Sit amet tootsie roll chocolate bar. Jelly-o jelly beans cotton candy jujubes croissant. Candy sweet chocolate cake bonbon jujubes sweet sweet roll chocolate bar.',
    tagline: 'Icing lollipop marzipan cake gingerbread halvah.',
    base_city: 'Melbourne',
    phone: '0404132123',
    email: 'pa@ga.co',
    website: 'www.nomnom.com',
    facebook: 'facebook.com/nomnom',
    twitter: '@nomnom',
    instagram: 'nomnom'
  }
]

trucks.each do |t|
  Truck.create(t)
end