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

students = %w()
instructors = %w()

groups = students.shuffle.chunk instructors.size
p instructors.shuffle.zip(groups)
