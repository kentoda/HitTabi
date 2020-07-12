class UserProfilesController < ApplicationController
	before_action :set_user_profile, only: [:show, :edit, :update]

	def new
		@user_profile = UserProfile.new
	end

	def create
		@user_profile = UserProfile.new(user_profile_params)
		@user_profile.user_id = current_user.id
		if @user_profile.save
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
		if @user_profile.update(user_profile_params)
  		redirect_to user_path(current_user.id)
  	    else
  		render "edit"
  	    end
	end

private

   def user_profile_params
  	params.require(:user_profile).permit(:image, :age, :job, :introduction)
   end

   def set_article
    @user_profile = UserProfile.find(params[:id])
   end



end
