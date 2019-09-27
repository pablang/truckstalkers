require "administrate/base_dashboard"

class TruckDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    reviews: Field::HasMany,
    photos: Field::HasMany,
    menu_items: Field::HasMany,
    taggings: Field::HasMany.with_options(class_name: "::ActsAsTaggableOn::Tagging"),
    base_tags: Field::HasMany.with_options(class_name: "::ActsAsTaggableOn::Tag"),
    category_taggings: Field::HasMany.with_options(class_name: "ActsAsTaggableOn::Tagging"),
    categories: Field::HasMany.with_options(class_name: "ActsAsTaggableOn::Tag"),
    id: Field::Number,
    name: Field::Text,
    bio: Field::Text,
    tagline: Field::Text,
    base_city: Field::Text,
    phone: Field::Text,
    email: Field::Text,
    website: Field::Text,
    facebook: Field::Text,
    twitter: Field::Text,
    instagram: Field::Text,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    z_id: Field::Number,
    price_range: Field::Number,
    latitude: Field::String.with_options(searchable: false),
    longitude: Field::String.with_options(searchable: false),
    address: Field::String,
    timings: Field::String,
    average_cost_for_two: Field::Number,
    slug: Field::String,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = %i[
  reviews
  photos
  menu_items
  taggings
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = %i[
  reviews
  photos
  menu_items
  taggings
  base_tags
  category_taggings
  categories
  id
  name
  bio
  tagline
  base_city
  phone
  email
  website
  facebook
  twitter
  instagram
  created_at
  updated_at
  z_id
  price_range
  latitude
  longitude
  address
  timings
  average_cost_for_two
  slug
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = %i[
  reviews
  photos
  menu_items
  taggings
  base_tags
  category_taggings
  categories
  name
  bio
  tagline
  base_city
  phone
  email
  website
  facebook
  twitter
  instagram
  z_id
  price_range
  latitude
  longitude
  address
  timings
  average_cost_for_two
  slug
  ].freeze

  # COLLECTION_FILTERS
  # a hash that defines filters that can be used while searching via the search
  # field of the dashboard.
  #
  # For example to add an option to search for open resources by typing "open:"
  # in the search field:
  #
  #   COLLECTION_FILTERS = {
  #     open: ->(resources) { where(open: true) }
  #   }.freeze
  COLLECTION_FILTERS = {}.freeze

  # Overwrite this method to customize how trucks are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(truck)
  #   "Truck ##{truck.id}"
  # end
end
