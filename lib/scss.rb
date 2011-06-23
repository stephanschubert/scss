module Scss
end

require "scss/engine" if defined?(Rails)

require "sass_extensions/functions/urls"
require "sass_extensions/functions/color"

Sass::Script::Functions.send :include, SassExtensions::Functions::Urls
Sass::Script::Functions.send :include, SassExtensions::Functions::Color
