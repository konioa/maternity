class ArticlesController < ApplicationController
  before_action :move_to_signed_in, omly: [:index]

  def index
    @articles = Article.all
  end
  
  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to root_path
    else
      render :new
    end
    #Article.create(article_params)
    #redirect_to root_path
  end

  def show
    @article = Article.find(params[:id])
  end

  private

  def article_params
    params.require(:article).permit(:start_time, :weight, :target_weight, :meal, :exercise, :condition, :disease, :diary)
  end

  def move_to_signed_in
    unless user_signed_in?
      #サインインしていないユーザーはログインページが表示される
      redirect_to  '/tops/'
    end
  end
end
