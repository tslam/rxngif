module ApplicationHelper

  def form_for(model)
    if #something
      return "<form action='#{}' method='#{}'"
    else
      return "<form action='#{}' method='#{}'"
    end
  end

end
