require "minitest/autorun"
require "minitest/focus"
require_relative("../day_6/solution")

class Day6Tests < Minitest::Test

  def test_day_6_solution_1_examples
    example_input = ""
    example_input << "COM)B\n"
    example_input << "B)C\n"
    example_input << "C)D\n"
    example_input << "D)E\n"
    example_input << "E)F\n"
    example_input << "B)G\n"
    example_input << "G)H\n"
    example_input << "D)I\n"
    example_input << "E)J\n"
    example_input << "J)K\n"
    example_input << "K)L\n"

    assert_equal(42, Day6.problem_1(example_input))
  end

  def test_day_6_solution_2_example
    example_input = ""

    example_input << "COM)B\n"
    example_input << "B)C\n"
    example_input << "C)D\n"
    example_input << "D)E\n"
    example_input << "E)F\n"
    example_input << "B)G\n"
    example_input << "G)H\n"
    example_input << "D)I\n"
    example_input << "E)J\n"
    example_input << "J)K\n"
    example_input << "K)L\n"
    example_input << "K)YOU\n"
    example_input << "I)SAN\n"

    assert_equal(4, Day6.problem_2(example_input))
  end
end