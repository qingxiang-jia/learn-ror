class ArticlesController < ApplicationController
  def new
  end

  def index
    @articles = Article.all
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article # redirect_to?
    else
      render 'new' # why the @article object is passed back to the new template
      # where is the 'new' template?
    end

    redirect_to @article
  end

  def show
    @article = Article.find(params[:id])
  end

  private
    def article_params
      params.require(:article).permit(:title, :text)
    end
end
