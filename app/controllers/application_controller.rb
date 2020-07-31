class ApplicationController < ActionController::Base
before_action :configure_permitted_parameters, if: :devise_controller?
before_action :set_search
before_action :set_tag

 def set_search
  @search = Article.ransack(params[:q])
  @search_articles = @search.result.page(params[:page]).per(4).where(status: true)
 end
 
 def set_tag
 	@tags = Tag.all.to_a.group_by{ |tag| tag.articles.count}
  # @tags = Tagmap.joins(:article).joins(:tag).select("articles.*, tags.*, count(`tags`.`id`) as count").group(:tag_id).order("count(tag_id) desc")
 end

protected
 def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:email])
 end

 def after_sign_out_path_for(resource)
      new_user_session_path 
 end
end
