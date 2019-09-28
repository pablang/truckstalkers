# frozen_string_literal: true

class Truck < ApplicationRecord
  has_many :reviews
  has_many :photos
  has_many :menu_items
  paginates_per 21
  geocoded_by :address
  after_validation :geocode
  acts_as_taggable_on :categories
  extend FriendlyId
  friendly_id :name, use: :slugged


  def reviews_summary
    summary = {
      service_rating: 0.0,
      value_rating: 0.0,
      cleanliness_rating: 0.0,
      food_rating: 0.0,
      average_rating: 0.0,
    }
    reviews_count = self.reviews.count.to_f

    self.reviews.each do |review|
      summary[:service_rating] += (review.service_rating/reviews_count)
      summary[:value_rating] += (review.value_rating/reviews_count)
      summary[:cleanliness_rating] += (review.cleanliness_rating/reviews_count)
      summary[:food_rating] += (review.food_rating/reviews_count)
      summary[:average_rating] += (review.average_rating/reviews_count)
    end
    return summary
  end

  def images
    self.photos.where(is_logo: false)
  end

  def clean_website
    self.website.sub(/^https?\:\/\/(www.)?/,'').sub(/\/$/,'')
  end

end
