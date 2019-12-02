require "minitest/autorun"
require_relative("../day_2/solution")

class Day2Tests < Minitest::Test
  def test_day_2_solution_1_process_intcodes

    assert_equal([2, 0, 0, 0, 99], Day2.process_intcode([1, 0, 0, 0, 99], 0))
    assert_equal([2, 3, 0, 6, 99], Day2.process_intcode([2, 3, 0, 3, 99], 0))
    assert_equal([2, 4, 4, 5, 99, 9801], Day2.process_intcode([2, 4, 4, 5, 99, 0], 0))
    assert_equal([30, 1, 1, 4, 2, 5, 6, 0, 99], Day2.process_intcode([1, 1, 1, 4, 99, 5, 6, 0, 99], 0))

  end
end