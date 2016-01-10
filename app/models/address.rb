class Address < ActiveRecord::Base
  belongs_to :addressable, polymorphic: true
  belongs_to :city
  belongs_to :state, class_name: "FederalState"
  belongs_to :country, class_name: "SovereignState"
  has_many :phones
end
