class Image < Attachment
  attachment :file, type: :image
  has_many :categories
end
