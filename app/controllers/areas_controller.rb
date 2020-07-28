class AreasController < ApplicationController
  def index
    @parents = Area.all.order("id ASC").limit(1)
  end
#１層目が5個なのでlimit(5)
end
