module ApplicationHelper

  def form_for(model)

    return "<form action='#{}' method='#{}'".html_safe
  end

end
