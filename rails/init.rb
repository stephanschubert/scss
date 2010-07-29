src = Rails.root + "vendor/plugins/scss"
dst = Rails.root + "public/stylesheets/sass/scss"

FileUtils.ln_sf src, dst

$:.unshift "#{File.dirname(__FILE__)}/../lib"

require "sass_extensions/functions/urls"
Sass::Script::Functions.send :include, SassExtensions::Functions::Urls
