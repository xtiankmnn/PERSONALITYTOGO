class PagesController < ApplicationController
  def home
  end

  def index
    @personalities = Personality.all
  end
end
