module Day4
  def self.problem_1(ranges)
    start, stop = ranges.split("-")

    (start.to_i..stop.to_i)
      .filter { |pin| self.meets_criteria?(pin.to_s) }
      .length
  end

  def self.problem_2(ranges)
    start, stop = ranges.split("-")

    (start.to_i..stop.to_i)
      .filter { |pin| self.meets_new_criteria?(pin.to_s) }
      .length

    "Not implemented"
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

  def self.has_adjacent_digits?(value)
    return value[0] == value[1] ||
      value[1] == value[2] ||
      value[2] == value[3] ||
      value[3] == value[4] ||
      value[4] == value[5]
  end

  def self.always_increases?(value)
    return value[0].to_i <= value[1].to_i &&
      value[1].to_i <= value[2].to_i &&
      value[2].to_i <= value[3].to_i &&
      value[3].to_i <= value[4].to_i &&
      value[4].to_i <= value[5].to_i
  end

  def self.adjacent_digits_not_present?(value)
    adjacent_digits = self.find_adjacent_digit_counts(value)

    adjacent_digits.keys.each do |digit|
      return false if adjacent_digits[digit] > 1 && adjacent_digits.keys.length == 1
    end

    true
  end

  def self.find_adjacent_digit_counts(value)
    digits = Hash.new { |h, k| h[k] = 0 }
    if value[0] == value[1]
      digits[value[0]] += 1
    end

    if value[1] == value[2]
      digits[value[1]] += 1
    end

    if value[2] == value[3]
      digits[value[2]] += 1
    end

    if value[3] == value[4]
      digits[value[3]] += 1
    end

    if value[4] == value[5]
      digits[value[4]] += 1
    end

    digits
  end


end