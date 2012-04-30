module ApplicationHelper
  def print_errors(model)
    if model.errors.any?
      html = "<div class='alert alert-error'><ul>"
      model.errors.full_messages.each do |message|
        html += "<li>#{message}</li>"
      end
      html += "</ul></div>"
      html.html_safe
    end
  end
end
