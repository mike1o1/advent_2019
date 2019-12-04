require "set"

module Day3
  def self.problem_1(instructions)
    paths = instructions.split("\n")
    first_path = paths[0]
    second_path = paths[1]

    intersection = trace_wire(first_path) & trace_wire(second_path)

    intersection.map { |x, y| x.abs + y.abs }.min
  end

  def self.problem_2(_)
    "Not implemented"
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
end