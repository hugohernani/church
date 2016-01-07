class PostsController < ApplicationController
  def index
    @posts = blog_posts_with_links.order('id desc')
  end

  def show
    @post = blog_posts_with_links.find(params[:slug])
  end

  private
  def blog_posts_with_links
    Entry.where(type: %w(BlogPost BlogLink))
  end

end
