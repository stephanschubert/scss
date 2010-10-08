module SassExtensions
  module Functions
    module Urls

      def image_url(path)
        path = path.value

        if defined?(::APP_ROOT)
          path = ::APP_ROOT + path
        end

        if buster = compute_cache_buster(path)
          path << "?#{buster}"
        end

        # TODO Asset host?

        Sass::Script::String.new("url('#{path}')")
      end

      private # ----------------------------------------------------------------

      def relative_path(path)
        path[0..0] ==  '/' ? path[1..-1] : path
      end

      # TODO Rails-dependent ...
      def compute_cache_buster(path)
        real_path = Rails.root + "public" + relative_path(path)

        if File.readable?(real_path)
          File.mtime(real_path).to_i.to_s
        else
          $stderr.puts "WARNING: '#{File.basename(path)}' was not found (or cannot be read) in #{File.dirname(real_path)}"
        end
      end

    end
  end
end
