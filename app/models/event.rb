class Event < ActiveRecord::Base
  has_one :address, as: :addressable
  has_one :image, as: :imageable

  scope :from_now_on, -> { where("start_at >= ?", DateTime.now.to_date) }
end
