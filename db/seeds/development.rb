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
    instagram: 'hoypinoybbq',
    z_id: '10',
    price_range: 1,
    address: 'South Melbourne, Victoria',
    category_list: 'Filipino, asian, BBQ, fusion'
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
    instagram: 'senorsisig',
    z_id: '',
    price_range: 2,
    address: 'Oakland, California',
    category_list: 'Filipino, asian, BBQ, Amercican, Mexican, fusion'
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
    instagram: 'mrburgertruck',
    z_id: '',
    price_range: 2,
    address: 'Brunswick, Melbourne',
    category_list: 'burger, fast-food'
  }
]

trucks.each do |t|
  Truck.create(t)
end


users = [
  { name: 'Anon',
    email: 'pammy@example.com',
    password: 'abcd'
  },
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

reviews = [
  { truck_id: 1,
    body: 'Commodo est luctus eget. Proin in nunc laoreet justo volutpat blandit enim. Sem felis, ullamcorper vel aliquam non, varius eget justo. Duis quis nunc tellus sollicitudin mauris.',
    service_rating: 3,
    value_rating: 2,
    cleanliness_rating: 2,
    food_rating: 3,
    average_rating: 2.5,
    user_id: 1,
    name: 'Pammy'
  },
  { truck_id: 1,
    body: 'Morbi velit eros, sagittis in facilisis non, rhoncus et erat. Nam posuere tristique sem, eu ultricies tortor imperdiet vitae. Curabitur lacinia neque non metus.',
    service_rating: 4,
    value_rating: 3,
    cleanliness_rating: 5,
    food_rating: 5,
    average_rating: 4.25,
    user_id: 2,
    name: 'Miguel'
  },
  { truck_id: 1,
    body: 'Morbi velit eros, sagittis in facilisis non, rhoncus et erat. Nam posuere tristique sem, eu ultricies tortor imperdiet vitae. Curabitur lacinia neque non metus.',
    service_rating: 1,
    value_rating: 4,
    cleanliness_rating: 3,
    food_rating: 3,
    average_rating: 2.75,
    user_id: 3,
    name: 'Frankie'
  },
]

reviews.each do |t|
  Review.create(t)
end

photos = [
  {
    truck_id: 1, path: '/img/trucks/1/1.jpg', is_logo: false, is_menu: false
  },
  {
    truck_id: 1, path: '/img/trucks/1/2.jpg', is_logo: false, is_menu: false
  },
  {
    truck_id: 1, path: '/img/trucks/1/3.jpg', is_logo: false, is_menu: false
  },
  {
    truck_id: 1, path: '/img/trucks/1/4.jpg', is_logo: false, is_menu: false
  },
  {
    truck_id: 1, path: '/img/trucks/1/5.jpg', is_logo: false, is_menu: false
  },
  {
    truck_id: 1, path: '/img/trucks/1/6.jpg', is_logo: false, is_menu: false
  },
  {
    truck_id: 1, path: '/img/trucks/1/7.jpg', is_logo: false, is_menu: false
  },
  {
    truck_id: 2, path: '/img/trucks/2/1.jpg', is_logo: false, is_menu: false
  },
  {
    truck_id: 2, path: '/img/trucks/2/2.jpg', is_logo: false, is_menu: false
  },
  {
    truck_id: 2, path: '/img/trucks/2/3.jpg', is_logo: false, is_menu: false
  },
  {
    truck_id: 2, path: '/img/trucks/2/4.jpg', is_logo: false, is_menu: false
  },
  {
    truck_id: 2, path: '/img/trucks/2/5.jpg', is_logo: false, is_menu: false
  },
  {
    truck_id: 2, path: '/img/trucks/2/6.jpg', is_logo: false, is_menu: false
  },
  {
    truck_id: 2, path: '/img/trucks/2/7.jpg', is_logo: false, is_menu: false
  },
  {
    truck_id: 3, path: '/img/trucks/3/1.jpg', is_logo: false, is_menu: false
  },
  {
    truck_id: 3, path: '/img/trucks/3/2.jpg', is_logo: false, is_menu: false
  },
  {
    truck_id: 3, path: '/img/trucks/3/3.jpg', is_logo: false, is_menu: false
  },
  {
    truck_id: 3, path: '/img/trucks/3/4.jpg', is_logo: false, is_menu: false
  },
  {
    truck_id: 3, path: '/img/trucks/3/5.jpg', is_logo: false, is_menu: false
  },
  {
    truck_id: 3, path: '/img/trucks/3/6.jpg', is_logo: false, is_menu: false
  },
]

photos.each do |t|
  Photo.create(t)
end