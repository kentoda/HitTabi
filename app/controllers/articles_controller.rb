class ArticlesController < ApplicationController 
before_action :authenticate_user!, {only: [:new]}
before_action :set_article, only: [:show, :edit, :update, :destroy]

   def new
   	@article = Article.new
   end

   def index
   #where(status: true)で公開中の記事のみとってくる
   	@articles = Article.where(status: true).page(params[:page]).per(2)
   end

   def create
   	@article = Article.new(article_params)
    # # split(",")で区切りを付けて、blogとは別に保存
    # tag_list = params[:article][:tag_name].split(",")
   	@article.user_id = current_user.id
  	if @article.save
       # save_articlesメソッドを作って、タグを保存
       # @article.save_articles(tag_list)
  	   redirect_to user_path(current_user.id)
  	else
  		render 'new'
  	end
   	
   end
    
   def show
   end

   def edit
    @tag_list = @article.tags.pluck(:tag_name).join(",")
   end


   def update
    tag_list = params[:article][:tag_name].split(",")
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
