class BaseSerializer < ActiveModel::Serializer
  include ActionView::Helpers::DateHelper

  def created_at
    time_ago_in_words(object.created_at)
  end

  def updated_at
    time_ago_in_words(object.updated_at)
  end
end
