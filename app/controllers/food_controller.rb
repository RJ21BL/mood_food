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
    @foods = Food.all
    @meat = Food.where(dietary_pref: 'Meat')
    @meats = @meat[rand(@meat.length)]
    @meat_image = @meats.image_name(@meats.name)
    
    
    # @food_name = "#{@food.name}"
    # @food_image = @food_name.gsub! ' ', '_'
    # @food_image = '/' + @food_image.downcase + '.jpeg'
  end 

  def vegan
    @vegan = Food.where(dietary_pref: 'Vegan')
    @vegans = @vegan[rand(@vegan.length)]
    @vegan_image = @vegans.image_name(@vegans.name)
  end 

  def vegetarian
    @vegetarian = Food.where(dietary_pref: 'Vegetarian')
    @vegetarians = @vegetarian[rand(@vegetarian.length)]
    @vegetarian_image = @vegetarians.image_name(@vegetarians.name)
  end 

private

  def food_params
    params.require(:food).permit(:name, :dietary_pref, :ingredients, :cooking_time, :allergies, :cooking_instructions)
  end
end
