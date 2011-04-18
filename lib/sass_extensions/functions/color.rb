module SassExtensions
  module Functions
    module Color

      def ie_hex(r,g,b,a)
        assert_type r, :Number
        assert_type g, :Number
        assert_type b, :Number
        assert_type a, :Number

        unless (0..1).include?(a.value)
          raise ArgumentError, "Alpha channel #{a.value} must be between 0 and 1"
        end

        r = r.value.to_s(16).rjust(2, '0')
        g = g.value.to_s(16).rjust(2, '0')
        b = b.value.to_s(16).rjust(2, '0')
        a = (a.value * 255).to_i.to_s(16).rjust(2, '0')

        Sass::Script::String.new(a + r + g + b)
      end

    end
  end
end
