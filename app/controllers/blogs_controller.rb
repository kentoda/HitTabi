class BlogsController < ApplicationController
  def index
  	@articles = Article.where(status: true).page(params[:page]).per(4)
  end
  
  def about
  	
  end
end
