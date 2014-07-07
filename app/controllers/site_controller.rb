class SiteController < ApplicationController
  def index
  	@thumbnails = Thumbnail.order("created_at DESC").paginate(page: params[:page],per_page: 4)
  end

  def about
  end


  def show
  	@thumbnail = Thumbnail.find(params[:thumbnail_id])
  end
end
