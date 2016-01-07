class BlogPost < Entry
  content_attr :description, :text
  content_attr :body, :text

  validates :title, :description, :body, presence: true
end
