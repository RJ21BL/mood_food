class FoodController < ApplicationController
  before_action :authenticate_user!, only: :toggle_favorite

  def new
    @food = Food.new
  end

  def create 
    @food = Food.create(food_params)
  end

  def index 
    @foods = Food.all
    @foods[1]
  end

  def show
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

  def meat
    @foods = Food.all
    @meat = Food.where(dietary_pref: 'Meat')
    @meats = @meat[rand(@meat.length)]
    @meat_image = @meats.image_name(@meats.name)
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

  def toggle_favorite
    @food = Food.find_by(id: params[:id])
    current_user.favorited?(@food) ? current_user.unfavorite(@food) : current_user.favorite(@food)
  end 

private
  def food_params
    params.require(:food).permit(:name, :dietary_pref, :ingredients, :cooking_time, :allergies, :cooking_instructions)
  end
end
