class Fibonacci

  # this method will break or take seemingly forever if you try numbers above 20
  def position_classic_recursive(position_number)
    if position_number < 0
      'Invalid position number!'
    elsif position_number == 0 || position_number == 1
      return position_number
    else
      one_back = position_classic_recursive(position_number - 1)
      two_back = position_classic_recursive(position_number - 2)
      return one_back + two_back
    end
  end

  # this method is fast and can support large numbers
  def position_hash_recursive(position_number)
    fib_number = Hash.new do |this_hash, key|
      if key < 0
        this_hash[key] = "Invalid position number!"
      elsif key == 0 || key == 1
        this_hash[key] = key
      else
        this_hash[key] = this_hash[key - 1] + this_hash[key - 2]
      end
    end

    fib_number[position_number]
  end
end
