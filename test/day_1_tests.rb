require "minitest/autorun"
require_relative("../day_1/solution")

class Day1Tests < Minitest::Test
  def test_day_1_solution_1
    assert_equal(2, Day1.problem_1("12"))
    assert_equal(2, Day1.problem_1("14"))
    assert_equal(654, Day1.problem_1("1969"))
    assert_equal(33583, Day1.problem_1("100756"))
    
    assert_equal(4, Day1.problem_1("12\n14"))
  end
  
  def test_day_1_solution_2
    assert_equal(2, Day1.problem_2("12"))
    assert_equal(966, Day1.problem_2("1969"))
    assert_equal(50346, Day1.problem_2("100756"))
    
    assert_equal(968, Day1.problem_2("12\n1969"))
  end
end