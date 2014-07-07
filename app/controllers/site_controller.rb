class SiteController < ApplicationController
  def index
  	@posts = Post.order("created_at DESC").paginate(page: params[:page],per_page: 4)
  end

  def about
  end

  def news
    @posts = Post.order("created_at DESC")
  end

  def show
  	@post = Post.find(params[:post_id])
    @news = Post.last(5)
  end
end
