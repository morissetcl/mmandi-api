class ArticlesController < ApiController
  def index
    @articles = Article.all
    render json: @articles
  end
end
