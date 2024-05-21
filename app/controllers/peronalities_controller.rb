class PeronalitiesController < ApplicationController
  def index
    @personalities = Personality.all
  end

  def show
    @personality = Personality.find(params[:id])
  end

  def new
    @personality = Personality.new
  end

  def create
    @personality = Personality.new(personality_params)
    if @personality.save
      redirect_to @personality
    else
      render 'new'
    end
  end
end

  private

  def personality_params
    params.require(:personality).permit(:name, :description, :price)
  end

