class Api::ReviewsController < ApplicationController

  def create
    @review = Review.create(review_params)
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
      :service_rating,
      :value_rating,
      :cleanliness_rating,
      :food_rating,
      :name
    ).merge(
      # substitute 1 for current_user.id
      user_id: 1,
    )
  end
end
