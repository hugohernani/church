class StaticPagesController < ApplicationController

  def index
    @events = Event.from_now_on.take(3)
    @posts = BlogPost.last(3)
  end

  def members
  end

  def our_mission
  end

end
