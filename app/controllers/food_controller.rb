class FoodController < ApplicationController
  before_action :authenticate_user!, only: :toggle_favorite

  def new
    @food = Food.new
  end

  def create 
    @food = Food.create(food_params)
  end

  def index 
    p @foods = Food.all
    p '+++++'
    p @foods[1]
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
    @test = [{"Step 1" => "Preheat the oven to 200C/180C Fan/Gas 6. Tip the leeks, mushrooms, sausages, chicken and sweet potato into a large roasting tin. Mix through the olive oil, harissa and sea salt, then arrange the sausages and chicken so that they’re sitting on top of the vegetables. Roast for 1 hour."}, 
    {"Step 2" => "Meanwhile, mix the drained chickpeas with the preserved lemon, olive oil, spring onions, parsley, garlic and sea salt flakes in a bowl. Set aside at room temperature."},
    {"Step 3" => "Once the chicken and sausages are golden-brown and cooked through, scatter over the chickpeas. Leave the tin to rest for 10 minutes, then serve hot, with yoghurt alongside."}]
    @foods = Food.all
    @meat = Food.where(dietary_pref: 'Meat')
    @meats = @meat[rand(@meat.length)]
    @meat_image = @meats.image_name(@meats.name)
  end 

  def search
    if params[:search_by_recipe] != ""
      @recipe_searched = Food.where("lower(name) = ?", params[:search_by_recipe].downcase)
    end
  end 

  def toggle_favorite
    p'================================'
    @food = Food.find_by(id: params[:id])
    current_user.favorited?(@food) ? current_user.unfavorite(@food) : current_user.favorite(@food)
    p'.............................'
end 

private

  def food_params
    params.require(:food).permit(:name, :dietary_pref, :ingredients, :cooking_time, :allergies, :cooking_instructions)
  end
end
