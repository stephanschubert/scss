if defined?(Rails)
  src = Rails.root + "vendor/plugins/scss"

  if Rails::VERSION::STRING >= "3.1"
    dst = Rails.root + "app/assets/stylesheets/scss"
  else
    dst = Rails.root + "public/stylesheets/sass/scss"
  end

  FileUtils.ln_sf src, dst
end

$:.unshift "#{File.dirname(__FILE__)}/lib"

require "sass_extensions/functions/urls"
require "sass_extensions/functions/color"

Sass::Script::Functions.send :include, SassExtensions::Functions::Urls
Sass::Script::Functions.send :include, SassExtensions::Functions::Color
