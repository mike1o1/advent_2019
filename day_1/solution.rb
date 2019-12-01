module Day1
  def self.problem_1(fuels)
    fuels
      .map(&:to_i)
      .map(&method(:calculate_fuel))
      .reduce(:+)
  end
  
  def self.problem_2(inputs)
    "Not implemented"
  end

  private

    def self.calculate_fuel(fuel)
      (fuel / 3) - 2
    end
end