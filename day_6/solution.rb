module Day6
  def self.problem_1(input)
    orbits = {}

    # Build a map of all the direct orbits
    input.split("\n").each do |orbit|
      first, second = orbit.split(")")
      orbits[second] = first
    end

    orbits_count = 0

    orbits.each do |object, _|
      while orbits[object]
        object = orbits[object]
        orbits_count += 1
      end
    end

    orbits_count
  end

  def self.problem_2(_)
    "Not Implemented"
  end

end