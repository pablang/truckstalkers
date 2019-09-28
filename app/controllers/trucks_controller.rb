class TrucksController < ApplicationController
  include ActionView::Helpers::NumberHelper
  def index
    @trucks = Truck.includes(:photos, :reviews).where(photos: {is_feature: true}).order(:updated_at).page(params[:page])
  end

  def show
    @truck = Truck.includes(:photos, :reviews).friendly.find(params[:id])
    @reviews_summary = @truck.reviews_summary
    @reviews = @truck.reviews.order(created_at: :desc).limit(5)
    @review = Review.new
    @photos = @truck.photos.order(updated_at: :desc)
    @address = @truck.address.tr(',' , '').tr(' ', '+') if @truck.address
    @menu = @truck.menu_items.order(order_index: :asc) if @truck.menu_items
  end

  def truck_params
    params.require(:truck).permit(:title, :body, :category_list)
  end

end
