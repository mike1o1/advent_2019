module Day6
  def self.problem_1(input)
    orbits = self.build_orbits(input)

    orbits_count = 0

    orbits.each do |object, _|
      while orbits[object]
        object = orbits[object]
        orbits_count += 1
      end
    end

    orbits_count
  end

  def self.problem_2(input)
    orbits = self.build_orbits(input)

    you_path = self.walk_path(orbits, "YOU")
    santa_path = self.walk_path(orbits, "SAN")

    intersect = you_path.find do |obj|
      santa_path.include?(obj)
    end

    you_path.index(intersect) + santa_path.index(intersect)

  end

  private

    def self.build_orbits(input)
      orbits = {}

      input.split("\n").each do |orbit|
        first, second = orbit.split(")")
        orbits[second] = first
      end

      orbits
    end

    def self.walk_path(orbits, origin)
      path = []

      while orbits[origin]
        origin = orbits[origin]
        path << origin
      end

      path
    end

end