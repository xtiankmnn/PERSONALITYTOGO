class PersonalitiesController < ApplicationController
  def index
    @personalities = Personality.all
    @user = user_signed_in? ? current_user : User.new
    @user.personality = Personality.all.sample
  end

  def show
    @personality = Personality.find(params[:id])
  end

  # when i click in home page on Personality Test -> I want that User has assigned a RANDOM Personality
  # current_user = current_user.Personality_id
  # and clicking brings me to the personality index with ASSIGNED personality of User on the top of the index page
  def assign
    @user.personality = Personality.all.sample
    @user.save
    redirect_to personalities_path
  end

  def sell
    @user.personality = Personality.all.sample
    # redirect_to sell_personalities_path
  end


  private

  def personality_params
    params.require(:personality).permit(:name, :description, :price)
  end
end
