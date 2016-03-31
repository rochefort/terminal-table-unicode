module Terminal
  class Table
    class Cell
      undef :align
      def align(val, position, length)
        # positions = { :left => :ljust, :right => :rjust, :center => :center }
        positions = { left: :mb_ljust, right: :mb_rjust, center: :mb_center }
        val.public_send(positions[position], length)
      end
    end
  end
end
