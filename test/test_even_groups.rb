require "minitest/autorun"
require "./student_util"

class TestMinitestStudentUtil < Minitest::Test
  def setup
    @student_util = StudentUtil.new
  end

  def test_that_groups_per_instructor_can_be_made
    assert_instance_of Array, @student_util.even_groups_per_instructor
  end
end
