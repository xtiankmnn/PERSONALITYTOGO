class PersonalitiesController < ApplicationController
  def index
    @personalities = Personality.all
  end

  def show
    raise
    @personality = Personality.find(params[:id])
  end

  def choose
    current_user.personality = personalities.find(params[:personality_id])
    raise
    current_user.save
  end


  # when i click in home page on Personality Test -> I want that User has assigned a RANDOM Personality
  # current_user = current_user.Personality_id
  # and clicking brings me to the personality index with ASSIGNED personality of User on the top of the index page
  def assign
    current_user.personality = Personality.first
    current_user.save
    redirect_to personalities_path
  end

  private

  def personality_params
    params.require(:personality).permit(:name, :description, :price)
  end
end
