module Scss
  class Railtie < Rails::Railtie

    config.to_prepare do
      src = File.dirname(__FILE__) + "/../../stylesheets"
      dst = "app/assets/stylesheets/scss"

      FileUtils.ln_sf src, dst
    end

  end
end
