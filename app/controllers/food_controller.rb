class FoodController < ApplicationController

  def new
    @food = Food.new
  end

  def create 
    @food = Food.create(food_params)
  end

  def index 
    @foods = Food.all
    @food = @foods.shuffle
  end

  def show
  end 


  def vegan
    @vegan = Food.where(dietary_pref: 'Vegan')
    @vegans = @vegan[rand(@vegan.length)]
    @vegan_image = @vegans.image_name(@vegans.name)
  end

  def vegan_dishes
    @vegan_list = Food.where(dietary_pref: 'Vegan')
  end

  def vegan_recipes
    @vegan_list = Food.where(dietary_pref: 'Vegan')
  end

  def vegetarian
    @vegetarian = Food.where(dietary_pref: 'Vegetarian')
    @vegetarians = @vegetarian[rand(@vegetarian.length)]
    @vegetarian_image = @vegetarians.image_name(@vegetarians.name)
  end 

  def vegetarian_dishes
    @vegetarian_list = Food.where(dietary_pref: 'Vegetarian')
  end

  def vegetarian_recipes
    @vegetarian_list = Food.where(dietary_pref: 'Vegetarian')
  end

  def meat
    @foods = Food.all
    @meat = Food.where(dietary_pref: 'Meat')
    @meats = @meat[rand(@meat.length)]
    @meat_image = @meats.image_name(@meats.name)
  end

  def meat_dishes
    @meat_list = Food.where(dietary_pref: 'Meat')
  end

  def meat_recipes
    @meat_list = Food.where(dietary_pref: 'Meat')
  end

  def search
    if params[:search_by_recipe] != "" 
      @recipe_searched = Food.where("name LIKE ?", params[:search_by_recipe])
      @search_option = 1
      if @recipe_searched == []
        @recipe_searched = Food.all
        @search_option = 0
      end
    end 
  end 

 

  def recipe
    @food = Food.find(params[:id])
  end 


private
  def food_params
    params.require(:food).permit(:name, :dietary_pref, :ingredients, :cooking_time, :allergies, :cooking_instructions)
  end

  def fav_params
    params.require(:food).permit(:id)
end
