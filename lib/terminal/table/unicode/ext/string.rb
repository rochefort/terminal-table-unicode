class String
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
