class Fibonacci

  # this method will break or take seemingly forever if you try numbers above 20
  def position_classic_recursive(position_number)
    if position_number < 0
      'Invalid position number!'
    elsif position_number == 0
      return 0
    elsif position_number == 1
      return 1
    else
      return position_classic_recursive(position_number - 1) + position(position_number - 2)
    end
  end
end
