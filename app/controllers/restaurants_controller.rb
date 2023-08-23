class RestaurantsController < ApplicationController
  before_action :set_resto, only: %i[ show ]
  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(resto_params)

      if @restaurant.save
        redirect_to @restaurant, notice: "New restaurant created"
      else
        render :new, status: :unprocessable_entity
      end
  end

  private

  def set_resto
    @restaurant = Restaurant.find(params[:id])
  end

  def resto_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
