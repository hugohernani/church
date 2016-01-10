class Attachment < ActiveRecord::Base
  belongs_to :attachable, polymorphic: true
  has_many :categories

  attachment :file, extension: ['pdf', 'txt', 'doc', 'docx', 'xls', 'xlsx', 'jpg', 'jpeg', 'gif', 'tif']
end
