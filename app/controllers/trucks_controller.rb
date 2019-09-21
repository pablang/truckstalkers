class TrucksController < ApplicationController

  def index
    @trucks = Truck.order(:updated_at).page params[:page]
  end

  def show
    @truck = Truck.find(params[:id])
    @reviews_summary = @truck.reviews_summary
    @reviews = Review.where(truck_id: params[:id])
    @review = Review.new
    @photos = Photo.where(truck_id: params[:id]).order(updated_at: :desc)
    @address = @truck.address.tr(',' , '').tr(' ', '+')
  end


end
