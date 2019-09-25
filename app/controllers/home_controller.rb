class HomeController < ApplicationController
  def index
    @popular_trucks = Truck.order(:updated_at).page(params[:page]).per(6)
    @trucks = Truck.includes(:photos, :reviews).where(photos: {is_feature: true}).order(:updated_at).page(params[:page])
    @categories = ActsAsTaggableOn::Tag.all
  end
end
