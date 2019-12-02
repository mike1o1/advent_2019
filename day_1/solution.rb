module Day1
  def self.problem_1(modules)
    modules
      .split("\n")
      .map(&:to_i)
      .map(&method(:calculate_fuel))
      .reduce(:+)
  end

  def self.problem_2(modules)
    fuel = 0

    modules.split("\n").map(&:to_i).each do |mass|
      while mass > 0
        mass = mass / 3 - 2

        if mass > 0
          fuel += mass
        end
      end
    end

    fuel
  end

  private

    def self.calculate_fuel(mass)
      (mass / 3) - 2
    end
end