class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to '/food#index', notice: "Thank you for signing up!"
    else
      render "new"
    end
  end

  def index 
  end 

  def show 
    if current_user.diet_pref == "Meat"
      @user_pref = Food.where(dietary_pref: 'Meat')
    elsif current_user.diet_pref == "Vegan"
      @user_pref = Food.where(dietary_pref: 'Vegan')
    else current_user.diet_pref == "Vegeterian"
      @user_pref = Food.where(dietary_pref: 'Vegeterian')
    end 
  end 

  private

  def user_params
   params.require(:user).permit(:first_name, :surname, :email, :password, :password_confirmation, :gender, :dob, :diet_pref)
  end
end