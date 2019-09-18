class TrucksController < ApplicationController
  def index
    @trucks = Truck.all
  end

  def show
    @truck = Truck.find(params[:id])
    @reviews_summary = @truck.reviews_summary
    @reviews = Review.where(truck_id: params[:id])
    @review = Review.new
    @photos = Photo.where(truck_id: params[:id]).order(updated_at: :desc)
  end


end
