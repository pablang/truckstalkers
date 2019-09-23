class CategoriesController < ApplicationController
  def show
    @category = params[:id]
    @trucks = Truck.tagged_with(params[:id]).page params[:page]
  end
end
