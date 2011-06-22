module Scss
  class Railtie < Rails::Railtie

    config.to_prepare do
      src = File.dirname(__FILE__) + "/../../stylesheets"
      dst = "app/assets/stylesheets/scss"

      FileUtils.rm_f dst
      FileUtils.ln_s src, dst
    end

  end
end
