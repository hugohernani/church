class PostPresenter < SimpleDelegator
  def self.decorate_collection(posts)
    posts.map { |p| new(p) }
  end

  def object
    __getobj__
  end

  def simple_post?
    object.images.empty? !object.audio_type?
  end

  def sliders?
    object.image_type? and !object.images.empty?
  end

  def audio?
    object.audio_type?
  end
end
