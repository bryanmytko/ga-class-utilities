require "json"
require "./core_extensions/array"

class StudentUtil
  Array.include CoreExtensions::Array

  def initialize(students_data, instructors_data)
    students_file = File.read(students_data)
    students_hash = JSON.parse(students_file)
    @students = students_hash["students"]

    instructors_file = File.read(instructors_data)
    instructors_hash = JSON.parse(instructors_file)
    @instructors = instructors_hash["instructors"]
  end

  def even_groups_per_instructor
    groups = @students.shuffle.chunk(@instructors.size)
    @instructors.zip(groups)
  end
end
