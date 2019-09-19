class HomeController < ApplicationController
  def index
    offset = 0
    @popular_trucks = Truck.all.offset(offset).order(updated_at: :asc).limit(6)
    @trucks = Truck.all.offset(offset).order(updated_at: :asc).limit(21)
  end
end
