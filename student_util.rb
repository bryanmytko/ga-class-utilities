require "json"
require "awesome_print"
# require "./core_extensions/array"

require "byebug"

# @TODO Move this monkey patch into core extensions
class Array
  def chunk(pieces)
    pieces ||= 2
    len = self.length
    mid = (len / pieces)
    chunks = []
    start = 0
    1.upto(pieces) do |i|
      last = start+mid
      last = last - 1 unless len % pieces >= i
      chunks << self[start..last] || []
      start = last + 1
    end
    chunks
  end
end

class StudentUtil

  def initialize
    students_file = File.read("cohorts/pangolins.json")
    students_hash = JSON.parse(students_file)
    @students = students_hash["students"]

    instructors_file = File.read("cohorts/instructors.json")
    instructors_hash = JSON.parse(instructors_file)
    @instructors = instructors_hash["instructors"]
  end

  def even_groups_per_instructor
    groups = @students.shuffle.chunk(@instructors.size)
    ap @instructors.zip(groups)
  end
end
