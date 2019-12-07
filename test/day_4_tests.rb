require "minitest/autorun"
require_relative("../day_4/solution")

class Day4Tests < Minitest::Test

  def test_day_4_solution_1_examples
    assert_equal(true, Day4.meets_criteria?(111111))
    assert_equal(false, Day4.meets_criteria?(223450))
    assert_equal(false, Day4.meets_criteria?(123789))
  end

  def test_day_4_solution_1_ranges
    assert_equal(10, Day4.problem_1("111111-111122"))
  end

  def test_day_4_solution_2_examples
    assert_equal(true, Day4.meets_new_criteria?(112233))
    assert_equal(false, Day4.meets_new_criteria?(123444))
    assert_equal(true, Day4.meets_new_criteria?(111122))
  end

end
