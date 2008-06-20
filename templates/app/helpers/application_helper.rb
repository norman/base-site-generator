# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  def body_class
    "#{controller.controller_name}_#{controller.action_name}"    
  end
  
  def content_exists(name)
    instance_variable_defined?("@content_for_#{name.to_s}")    
  end
  
  def page_header(text)
    content_for :page_header do
      content_tag(:h2, text)
    end
  end
  
  def page_title(text)
    content_for :page_title do
      text
    end
  end
  
  def page_title_or_header
    text = @content_for_page_title || @content_for_page_header || ''
    strip_tags(text) + (text.include?(APP_CONFIG["site_name"]) ? '' : " - #{APP_CONFIG["site_name"]}")
  end

end
