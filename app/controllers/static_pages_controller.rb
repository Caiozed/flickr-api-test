class StaticPagesController < ApplicationController
  def index
  	if params[:search]
  		if !params[:search][:user_id].empty?
  			@photos = flickr.photos.search(user_id: params[:search][:user_id])
        render
   		else
  			render_current
  		end
  	else
 			render_current
  	end
  end

  def render_current
  	@photos = flickr.photos.getRecent(per_page: 33, page: 1)
  end
end
