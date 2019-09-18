class Review < ApplicationRecord
  belongs_to :truck
  belongs_to :user

  before_save :calculate_average

  def calculate_average
    ratings = [self.service_rating, self.value_rating, self.cleanliness_rating, self.food_rating]
    self.average_rating = ratings.sum / ratings.length.to_f
  end
end
