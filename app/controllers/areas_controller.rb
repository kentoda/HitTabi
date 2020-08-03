class AreasController < ApplicationController

	def index
		@parents = Area.all.order("id ASC").limit(5)
	end

end

