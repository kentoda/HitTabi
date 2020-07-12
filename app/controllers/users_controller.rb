class UsersController < ApplicationController
  def show
  	@user = User.find(params[:id])
  	@articles = Article.all.order(created_at: :asc)# 作成日順に表示
  	@articles = @user.articles.page(params[:page]).reverse_order
  end

  
 
end
