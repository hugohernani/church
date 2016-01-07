class BlogLink < Entry
  content_attr :url, :string
  content_attr :quote, :text
  content_attr :comment, :text

  validates :url, :quote, presence: true
end
