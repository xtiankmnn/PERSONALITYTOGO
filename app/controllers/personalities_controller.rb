class PersonalitiesController < ApplicationController
  def index
    @personalities = Personality.all
  end

  def show
    @personality = Personality.find(params[:id])
  end

  def choose
    current_user.personality = personalities.find(params[:personality_id])
    raise
    current_user.save
  end

  def assign
    @personality = Personality.new(params[:id])
    @personality.current_user = @personality
  end

  private

  def personality_params
    params.require(:personality).permit(:name, :description, :price)
  end
end
