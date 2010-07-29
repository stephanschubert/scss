src = Rails.root + "vendor/plugins/scss"
dst = Rails.root + "public/stylesheets/sass/scss"

FileUtils.ln_sf src, dst

require "../lib/sass_extensions/functions/urls"
Sass::Script::Functions.send :include, SassExtensions::Functions::Urls
