class GemstoriesController < ApplicationController
  def index
    @gemstories = Gemstory.all
    render json: @gemstories
  end
end
