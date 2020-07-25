class ApplicationController < ActionController::Base
before_action :configure_permitted_parameters, if: :devise_controller?
before_action :set_search

 def set_search
  @search = Article.ransack(params[:q])
  @search_articles = @search.result.page(params[:page]).per(4)
 end


protected
 def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:email])
 end

 def after_sign_out_path_for(resource)
      new_user_session_path 
 end
end
