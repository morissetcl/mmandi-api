class ArticlesController < ApiController

  def index
    @articles = Article.all.order(created_at: :desc)
    if params[:tags].present?
      @articles =  @articles.ransack(tags_cont: params[:tags]).result.order(created_at: :desc)
    end
    render json: @articles
  end
end
