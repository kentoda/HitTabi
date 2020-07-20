class ArticlesController < ApplicationController 
before_action :authenticate_user!, {only: [:new]}
before_action :set_article, only: [:show, :edit, :update, :destroy]

   def new
   	@article = Article.new
   end

   def index
   #where(status: true)で公開中の記事のみとってくる
   	@articles = Article.where(status: true).page(params[:page]).per(4)
   end

    def tag 
      tags = Tag.all
   #  # @user = current_user
   #  # if params[:name].nil?
   #    @tags = Tag.all
   #  # else
   #    @tag = Tag.find_by(tag_name: params[:name])
   #    @article = tag.article.page(params[:page]).per(20)
   #    @tags = Tag.all.to_a.group_by{ |tag| tag.article.count}
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
       @article.save_articles(tag_list)
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
      params.require(:article).permit(
        :title, 
        :content,
        :country,
        :status,
        :hashbody,
        tags_attributes: [
          :id,
          :tag_name,
          :_destroy

        ]
      )
    end

 # private

 #    def article_params
 #     params.require(:article).permit(:title, :content, :country, :status)
 #   end

   def set_article
       @article = Article.find(params[:id])
   end

end
