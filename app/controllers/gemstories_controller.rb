class GemstoriesController < ApiController
  def index
    @gemstories = Gemstory.all
    render json: @gemstories
  end
end
