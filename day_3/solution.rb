require "set"

module Day3
  def self.problem_1(instructions)
    paths = instructions.split("\n")
    first_path = paths[0]
    second_path = paths[1]

    intersections = trace_wire(first_path) & trace_wire(second_path)

    intersections.map { |x, y| x.abs + y.abs }.min
  end

  def self.problem_2(instructions)
    first_path, second_path = instructions.split("\n")

    intersections = trace_wire(first_path) & trace_wire(second_path)

    step_counts = intersections.map do |x, y|
      # count how many steps were taken
      first_steps = trace_wire_steps(first_path, x, y)
      second_steps = trace_wire_steps(second_path, x, y)

      first_steps + second_steps
    end

    step_counts.min
  end

  private

    def self.trace_wire(inputs)
      visited = Set.new

      x, y = 0, 0

      inputs.split(",").each do |input|
        operation = input[0]
        count = input[1..].to_i

        count.times do
          case operation
          when "R"
            x += 1
          when "L"
            x -= 1
          when "U"
            y += 1
          when "D"
            y -= 1
          end

          visited.add([x, y])

        end
      end

      visited
    end

    def self.trace_wire_steps(inputs, point_x, point_y)
      x, y = 0, 0

      steps = 0

      # Go through the inputs until we meet the first intersection
      # and count how many steps were taken

      inputs.split(",").each do |input|
        operation = input[0]
        count = input[1..].to_i

        count.times do
          steps += 1

          case operation
          when "R"
            x += 1
          when "L"
            x -= 1
          when "U"
            y += 1
          when "D"
            y -= 1
          end

          if x == point_x && y == point_y
            return steps
          end
        end
      end

      return 0
    end
end