class ArticlesController < ApiController
  def index
    @articles = Article.all
    if params[:tags].present?
      @articles =  @articles.ransack(tags_cont: params[:tags]).result
    end
    render json: @articles
  end
end
