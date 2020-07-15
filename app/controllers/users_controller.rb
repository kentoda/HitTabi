class UsersController < ApplicationController
	before_action :set_user, only: [:show, :edit, :update]

  def show
  	@articles = Article.all.order(created_at: :asc)# 作成日順に表示
  	@articles = @user.articles.page(params[:page]).reverse_order
  end


  def update
  	if @user.update(user_params)
       redirect_to user_path(@user.id)
  	else
  		 render "edit"
  	end	
  end

 private

   def user_params
     params.require(:user).permit(:age, :job, :profile_image, :introduction)
   end

   def set_user
    @user = User.find(params[:id])
   end

 
end
