# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  def body_class
    "#{controller.controller_name}_#{controller.action_name}"    
  end
  
  def content_exists(name)
    instance_variable_defined?("@content_for_#{name.to_s}")    
  end
  
  # Wrap the page header content with this function so that it can be used as
  # a fallback page title.
  def page_header(text = nil, options = {}, &block)
    options[:id] ||= "page_header"
    options[:class] ||= "page_header"
    content_for :page_header do
      if block_given?
        content_tag(:h2, capture(&block), options)
      else
        content_tag(:h2, text, options)
      end
    end
  end
  
  # Set the page title.
  def page_title(text = nil, &block)
    content_for :page_title do
      if block_given?
        capture(&block)
      else
        text
      end
    end
  end
  
  # Show the flash in an RJS template and then discard it so that it's not
  # shown on the next page load. This allows you to avoid having to set the
  # same flash message twice for actions that respond with RJS or HTML.
  def rjs_flash(page)
    page.replace "flash", :partial => "common/flash", :locals => {:flash => flash}
    flash.discard
  end  
  
  def page_title_or_header
    text = @content_for_page_title || @content_for_page_header || ''
    strip_tags(text) + (text.include?(APP_CONFIG["site_name"]) ? '' : " - #{APP_CONFIG["site_name"]}")
  end

end
