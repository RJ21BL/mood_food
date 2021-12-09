class FoodController < ApplicationController
  def new
    @food = Food.new
  end

  def create 
    @food = Food.create(food_params)
  end

  def index 
    p @foods = Food.all
  end

  def show
    @foods = Food.all
  end

private

  def food_params
    params.require(:food).permit(:name, :dietary_pref, :ingredients, :cooking_time, :allergies, :cooking_instructions)
  end
end
