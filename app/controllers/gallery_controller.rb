class GalleryController < ApplicationController

  def index
    @images = Image.all
    @categories = []
  end

end
