class Entry < ActiveRecord::Base
  extend FriendlyId
  scope :order_by_content_class, -> { order(type: :desc) }
  friendly_id :slug_candidates, use: [:slugged, :finders]

  def self.content_attr(attr_name, attr_type = :string)
    content_attributes[attr_name] = attr_type
    store_accessor :payload, attr_name
  end

  def self.content_attributes
    @content_attributes ||= {}
  end

  def slug_candidates
    [
      :title
    ]
  end

  validates :title, :description, presence: true

end
