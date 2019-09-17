class Api::ReviewsController < ApplicationController

  # def create
  #   @review = Review.create(review_params)
  #   render json: @review
  # end
  def create
    @review = Review.create(review_params)
    # byebug
    respond_to do |format|
      format.html
      format.js
      format.json { render json: @review, status: :created, location: @review }
    end
  end

  def review_params
    params.require(:review).permit(
      :truck_id,
      :body,
      # :service_rating,
      # :value_rating,
      # :cleanliness_rating,
      # :food_rating,
    ).merge(
      user_id: 1,
      service_rating: 5,
      value_rating: 4,
      cleanliness_rating: 5,
      food_rating: 5,
    )
  end
end
