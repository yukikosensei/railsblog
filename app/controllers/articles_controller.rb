class ArticlesController < ApplicationController
  def index
    @articles = Article.all.order(created_at: 'desc').page(params[:page]).per(1)
  end

  def show 
    @articles = Article.all.order(created_at: 'desc')
  end


  def new
    @articles = Article.all.order(created_at: 'desc')
  end

  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to root_path(@article)
  end

  def edit 
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to root_path
    else
      render 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to root_path
  end

  private
  def article_params
    params.require(:article).permit(:title, :body)
  end

end