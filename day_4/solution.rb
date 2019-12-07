module Day4
  def self.problem_1(ranges)
    start, stop = ranges.split("-").map(&:to_i)

    (start..stop)
      .filter { |pin| self.meets_criteria?(pin) }
      .length
  end

  def self.problem_2(ranges)
    start, stop = ranges.split("-").map(&:to_i)

    (start..stop)
      .filter { |pin| self.meets_new_criteria?(pin) }
      .length
  end

  def self.meets_criteria?(value)
    return self.has_adjacent_digits?(value) &&
      self.always_increases?(value)
  end

  def self.meets_new_criteria?(value)
    return self.has_adjacent_digits?(value) &&
      self.always_increases?(value) &&
      self.adjacent_digits_not_present?(value)
  end

  def self.has_adjacent_digits?(password)
    digits = password.digits.reverse

    return digits[0] == digits[1] ||
      digits[1] == digits[2] ||
      digits[2] == digits[3] ||
      digits[3] == digits[4] ||
      digits[4] == digits[5]
  end

  def self.always_increases?(password)
    digits = password.digits.reverse

    digits.each_cons(2).all? { |a, b| a <= b }
  end

  def self.adjacent_digits_not_present?(password)
    password.digits.chunk(&:itself).any? { |_, chunk| chunk.size == 2 }
  end


end