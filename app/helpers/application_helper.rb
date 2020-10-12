module ApplicationHelper

  def previous_url
    URI(request.referer || '').path
  end

end
