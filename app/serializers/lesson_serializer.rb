class LessonSerializer < BaseSerializer
  attributes :id, :title, :description, :body, :slug, :created_at, :updated_at
end
