class BlogController < ApplicationController

  def index
    @posts = PostPresenter.decorate_collection(BlogPost.all)
  end
end
