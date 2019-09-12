# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

trucks = [
  { name: 'Hoy Pinoy',
    bio: 'The appeal of Hoy Pinoy lies in its laid-back, self-possessed, quietly confident authenticity. Its goal is not to take Filipino street food and make it haute, or hatted, commanding prices that would put off its current mobile market following.
    Hoy Pinoy has always valued sticking to the basics: why improve on perfection? The recipes are all from Regina’s family. The Hoy Pinoy staff are all Filipino, and they communicate in Tagalog and English.
    All the food is cooked fresh on-site immediately before serving. The seasoning and spices are from the Philippines. Advertising, aside from mentions in the promotional material for mobile markets and food festivals, is strictly by seduction: tempted by the smells and the crowds, people pile into 15-20-minute queues, and after finding satisfaction at the end of a barbecue devoured all too quickly, bring their friends the next day.
    The open-air grill that thickens the air with smoke and the scent of roasting meat swathed in savoury-sweet marinade are reminiscent of the Olongapo street food vendors making their after-school rounds, a memory still fresh in Regina’s mind after over 20 years of resettling.',
    tagline: 'Filo yumminess.',
    base_city: 'Melbourne',
    phone: '0439374669',
    email: 'lechon@hoypinoy.com.au',
    website: 'http://www.hoypinoy.com.au',
    facebook: 'hoypinoybbq',
    twitter: '',
    instagram: 'hoypinoybbq'
  },
  { name: 'Señor Sisig',
    bio: 'In 2010, San Francisco’s street-food scene was taking baby steps, trying to walk the city’s complicated permit requirements. To make it, you needed passion and vision—exactly the two things that fueled the launch of Señor Sisig’s first food truck that year. Inspired by the success of Roy Choi’s Kogi Korean taco truck in Los Angeles, high school friends Evan Kidera, who has an MBA from San Francisco State, and Gil Payumo, an experienced chef, saw Filipino food as a Bay Area cultural force ready to break out.
    With it’s fleet of five food trucks serving the San Francisco Bay Area you won’t have to search long to experience Senor Sisig’s truly unique take on a traditional Filipino delicacy. It’s fast, it’s fun, it’s flavorful, and best of all, it’s truly San Franciscan. ',
    tagline: 'World Famous Filipino Fusion Flavor.',
    base_city: 'San Francisco',
    phone: '0404132123',
    email: 'senor@sisig.com',
    website: 'https://www.senorsisig.com/',
    facebook: 'senorsisig',
    twitter: 'senorsisig',
    instagram: 'senorsisig'
  },
  { name: 'Mr Burger',
    bio: 'In early 2012, Myles Munro and Daragh Kan were on holiday in America, and while there, ate at a heap of food trucks and burger joints in San Francisco, New York, Austin and Miami.
    Blown away by what they saw, they came back to Melbourne and immediately started plans for building a food truck.',
    tagline: 'A TRUE BURGER LOVE STORY.',
    base_city: 'Melbourne',
    phone: '04131828282',
    email: 'ilove@mrburger.com',
    website: 'https://www.mrburger.com.au',
    facebook: 'mrburgertruck',
    twitter: '',
    instagram: 'mrburgertruck'
  }
]

trucks.each do |t|
  Truck.create(t)
end