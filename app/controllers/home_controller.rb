class HomeController < ApplicationController
  def index
    @trucks = Truck.all
  end
end
