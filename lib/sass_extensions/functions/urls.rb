module SassExtensions
  module Functions
    module Urls

      def image_url(path)
        path = path.value

        if defined?(::APP_ROOT)
          path = ::APP_ROOT + path
        end

        Sass::Script::String.new("url('#{path}')")
      end

    end
  end
end
