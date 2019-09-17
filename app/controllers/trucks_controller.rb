class TrucksController < ApplicationController
  def index
    @trucks = Truck.all
  end

  def show
    @truck = Truck.find(params[:id])
    @reviews_summary = @truck.reviews_summary
    @reviews = @truck.reviews
    @review = Review.new
  end


end
