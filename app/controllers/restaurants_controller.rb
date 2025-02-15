class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [ :show, :edit, :update, :destroy]
  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_param)

    if @restaurant.save
      redirect_to @restaurant, notice: "Restaurant was successfully created!!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @restaurant.update(restaurant_param)
      redirect_to @restaurant, notice: "Restaurant was successfully updated!!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @restaurant.destroy
    redirect_to restaurants_url notice: "Restaurant was successfully deleted!!"
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_param
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
