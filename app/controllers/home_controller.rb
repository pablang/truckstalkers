class HomeController < ApplicationController
  def index
    @popular_trucks = Truck.order(:updated_at).page params[:page]
    @trucks = Truck.order(:updated_at).page params[:page]
  end
end
