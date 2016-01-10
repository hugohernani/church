class Phone < ActiveRecord::Base
  has_enumeration_for :category, with: PhoneCategory, required: true, create_scopes: true
end
