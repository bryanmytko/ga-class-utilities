require "minitest/autorun"
require "./student_util"
require "byebug"

class TestMinitestStudentUtil < Minitest::Test
  def setup
    students = "test/data/students.json"
    instructors = "test/data/instructors.json"
    student_util = StudentUtil.new(students, instructors)

    @even_groups = student_util.even_groups_per_instructor
  end

  def test_that_groups_per_instructor_can_be_made
    assert_instance_of Array, @even_groups
  end

  def test_that_groups_per_instructor_are_near_even
    diff = (@even_groups[1][1].length - @even_groups[0][1].length)
    assert_includes 0..1, diff.abs
  end
end
