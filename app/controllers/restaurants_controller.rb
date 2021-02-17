class RestaurantsController < ApplicationController
before_action :set_restaurant, only: [:show, :edit, :update]

  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def edit
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path, notice: 'Restaurant was successfully created.'
    else
      render :new
    end
  end

  def update
    @restaurant.update(restaurant_params)
    redirect_to restaurant_path(restaurant), notice: 'The restaurant was updated!'
  end

  def new
    @restaurant = Restaurant.new
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
