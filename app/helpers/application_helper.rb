module ApplicationHelper

  def page_title(title = 'Assembleia de Deus Madureira - Arapiraca')
    content_for?(:page_header) ? "ADMM - Arapiraca - #{yield(:page_header)}" : ""
  end

  def homepage?
    return controller_name == 'static_pages' && action_name == 'index'
  end

end
