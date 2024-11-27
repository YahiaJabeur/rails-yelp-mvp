class RestaurantsController < ApplicationController
  # Only allow the admin (developer) to perform certain actions (create, update, destroy).
  before_action :set_restaurant, only: [:show]

  # Action to display all restaurants
  def index
    @restaurants = Restaurant.all
  end

  # Action to display a specific restaurant
  def show
    # The restaurant is already set by before_action
    @reviews = @restaurant.reviews
  end

  # Action to show the form to create a new restaurant
  def new
    @restaurant = Restaurant.new
  end

  # Action to create a new restaurant
  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      # Redirect to the restaurant's show page after saving
      redirect_to @restaurant, notice: 'Restaurant was successfully created.'
    else
      # If there were errors, render the new form again
      render :new
    end
  end

  # Private methods to handle params
  private

  # Set restaurant instance for actions that need it
  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  # Strong parameters for creating a restaurant
  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
