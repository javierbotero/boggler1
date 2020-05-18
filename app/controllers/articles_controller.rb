class ArticlesController < ApplicationController
    #action
    include ArticlesHelper
    def index
      @articles = Article.all
    end

    def create
      @article = Article.new(article_params)
      @article.save
  
      redirect_to article_path(@article)
    end

    def new
      @article = Article.new
    end

    def show
      @article = Article.find(params[:id])
    end

end

