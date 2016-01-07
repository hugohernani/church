require Rails.root.join('lib/entry_conf')

EntryConf.configure do |config|
  config.content_classes = %w(BlogPost BlogLink Lesson)
end
