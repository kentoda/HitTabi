class BlogsController < ApplicationController
  def index
  	@articles = Article.page(params[:page]).per(2)
  end
  
  def about
  	
  end
end
