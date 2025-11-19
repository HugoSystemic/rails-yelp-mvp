class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurants = Restaurant.new
  end

  def create
    @restaurants = Restaurant.new(restaurant_params)
    @restaurants.save
    redirect_to restaurants_path(@restaurant)
  end

  def show
    @restaurants = Restaurant.find(params[:id])
  end

  # def edit
  #   @Restaurant = Restaurant.find(params[:id])
  # end

  # def update
  #   @restaurant = Restaurant.find(params[:id])
  #   @restaurant.update(restaurant_params)
  #   redirect_to restaurant_path(@restaurant)
  # end

  # def destroy
  #   @restaurant = Restaurant.find(params[:id])
  #   @restaurant.destroy
  #   redirect_to restaurants_path, status: :see_other
  # end


  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category, presence: true)
  end
end
