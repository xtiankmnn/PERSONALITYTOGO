class PersonalitiesController < ApplicationController
  def index
    @personalities = Personality.all
  end

  def show
    @personality = Personality.find(params[:id])
  end

  # def new
  #   @personality = Personality.new
  # end

  # def create
  #   @personality = Personality.new(personality_params)
  #   if @personality.save
  #     redirect_to @personality
  #   else
  #     render 'new'
  #   end
  # end


  # def choose
  #   current_user.personality = Personality.find(params[:personality_id])
  #   raise
  #   current_user.save
  # end

  # def assign
  #   @personality = Personality.new(params[:personality_id])
  #   @personality.current_user = @personality
  # end

  private

  def personality_params
    params.require(:personality).permit(:name, :description, :price)
  end
end
