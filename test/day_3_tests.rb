require "minitest/autorun"
require_relative("../day_3/solution")

class Day3Tests < Minitest::Test
  def test_day_3_solution_1_example_1
    
    wire_path_1 = "R75,D30,R83,U83,L12,D49,R71,U7,L72"
    wire_path_2 = "U62,R66,U55,R34,D71,R55,D58,R83"
    
    instructions = "#{wire_path_1}\n#{wire_path_2}"
    
    assert_equal(159, Day3.problem_1(instructions))
  end

  def test_day_3_solution_1_example_2
    wire_path_1 = "R98,U47,R26,D63,R33,U87,L62,D20,R33,U53,R51"
    wire_path_2 = "U98,R91,D20,R16,D67,R40,U7,R15,U6,R7"

    instructions = "#{wire_path_1}\n#{wire_path_2}"

    assert_equal(135, Day3.problem_1(instructions))
  end
end