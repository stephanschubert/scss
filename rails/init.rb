src = Rails.root + "vendor/plugins/scss"
dst = Rails.root + "public/stylesheets/sass/scss"

FileUtils.ln_sf src, dst
