class BaseSiteGenerator < Rails::Generator::Base
  def manifest
    record do |m|
      m.file "config/initializers/application_config.rb", "config/initializers/application_config.rb"
      m.file "config/application.yml", "config/application.yml"
      m.file "app/helpers/application_helper.rb", "app/helpers/application_helper.rb"
      m.directory "app/views/common"
      m.file "app/views/layouts/main.html.erb", "app/views/layouts/main.html.erb"
      m.file "app/views/common/403.html.erb", "app/views/common/403.html.erb"
      m.file "app/views/common/404.html.erb", "app/views/common/404.html.erb"
      m.file "app/views/common/_analytics.html.erb", "app/views/common/_analytics.html.erb"
      m.file "app/views/common/_flash.html.erb", "app/views/common/_flash.html.erb"
      m.file "app/views/common/_footer.html.erb", "app/views/common/_footer.html.erb"
      m.file "app/views/common/_head.html.erb", "app/views/common/_head.html.erb"
      m.file "app/views/common/_navigation.html.erb", "app/views/common/_navigation.html.erb"
      m.file "public/stylesheets/main.css", "public/stylesheets/main.css"
      m.file "public/stylesheets/print.css", "public/stylesheets/print.css"
      m.file "public/stylesheets/reset.css", "public/stylesheets/reset.css"
    end
  end
end
