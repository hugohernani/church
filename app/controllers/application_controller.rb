class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def content_entries_path
    entries_path(content_class: content_class.tableize)
  end

  def content_entry_path(entry)
    entry_path(id: entry.id, content_class: content_class.tableize)
  end

  def edit_content_entry_path(entry)
    edit_entry_path(id: entry.id, content_class: content_class.tableize)
  end

  helper_method :content_entries_path, :content_entry_path, :edit_content_entry_path
end
