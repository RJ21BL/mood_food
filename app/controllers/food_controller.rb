class FoodController < ApplicationController

  def new
    @food = Food.new
  end

  def create 
    @food = Food.create(food_params)
  end

  def index 
    @foods = Food.all
  end

  def show
    p @foods = Food.all
    "+++"
     rand_dom = rand(1...4)
     "+++"
    @food = @foods[rand_dom]
    
  end 

private

  def food_params
    params.require(:food).permit(:name, :dietary_pref, :ingredients, :cooking_time, :allergies, :cooking_instructions)
  end
end
