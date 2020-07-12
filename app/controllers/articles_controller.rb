class ArticlesController < ApplicationController 
before_action :authenticate_user!, {only: [:new]}
before_action :set_article, only: [:show, :edit, :update, :destroy]

   def new
   	@article = Article.new
   end

   def index
    # published.orderで公開記事だけを検索 ("created_at DESC")で記事を新しい順で表示
   	@articles = Article.page(params[:page]).per(2)
   end

   def create
   	@article = Article.new(article_params)
   	@article.user_id = current_user.id
  	if @article.save
  	   redirect_to user_path(current_user.id)
  	else
  		render 'new'
  	end
   	
   end
    
   def show
   end

   def edit
   end

   def update
   	if @article.update(article_params)
  		redirect_to articles_path
  	else
  		render "edit"
  	end
   end

   def destroy
   	@article.destroy
  	redirect_to articles_path
   end


private

   def article_params
  	params.require(:article).permit(:title, :content, :country, :status)
   end

   def set_article
    @article = Article.find(params[:id])
   end

end
