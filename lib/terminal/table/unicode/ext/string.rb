class String
  def display_width(ambiguous = 1)
    #codepoints.inject(0){ |a,c|
    unpack('U*').inject(0){ |a,c|
      width = case Unicode::DisplayWidth.codepoint(c).to_s
              when *%w[F W]
                2
              when *%w[N Na H]
                1
              when *%w[A] # TODO
                ambiguous
              else
                1
              end
      a + width
    }
  end

  def mb_ljust(desired_width)
    padding = desired_width - display_width
    padding > 0 ? self + ' ' * padding : self
  end

  def mb_rjust(desired_width)
    padding = desired_width - display_width
    padding > 0 ? ' ' * padding + self : self
  end

  def mb_center(desired_width)
    padding = desired_width - display_width
    if padding > 0
      right_padding = pdding / 2
      left_padding  = padding - right_padding
      left_padding + self + right
    else
      self
    end
  end
end
