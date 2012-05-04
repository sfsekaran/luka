# Luka
## The duplicitous, silver-tongued proxy.

Luka is a simple proxy that gives you a fluent interface layer on top of any object.

    class Pie
      def slice
        @sliced = true
      end

      def take
        @taken = true
      end

      def sliced?
        @sliced
      end

      def taken?
        @taken
      end
    end

    pie = Pie.new
    eloquent_pie = luka(Pie.new)
    eloquent_pie.slice.take
    
    eloquent_pie.sliced? # => true
    eloquent_pie.taken? # => true

There you have it.
