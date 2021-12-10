class FoodController < ApplicationController

  def new 
    @food = Food.new
  end

  def create 
    @food = Food.create(food_params)
  end 

  def index 
   p  @foods = Food.all
  end 
  def show
    @foods = Food.all
    p "+++"
     rand_dom = rand(1...4)
     p "+++"
    p @food = @foods[rand_dom]

  end 

private

  def food_params
    params.require(:food).permit(:name, :dietary_pref, :ingridents, :cooking_time, :allergies, :cooking_instruction)
  end

end
