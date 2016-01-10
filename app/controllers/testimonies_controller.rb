class TestimoniesController < ApplicationController

  def index
    @testimonies = Testimony.all
  end

  def show
  end

end
