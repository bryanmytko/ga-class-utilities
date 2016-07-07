# Student Utilities

### Data

instructors.json

    {
      "instructors": [
        "Jane Doe",
        "John Doe",
      ]
    }

students.json

    {
      "students": [
        "John Lennon",
        "Paul McCartney",
        "George Harrison",
        "Ringo Starr"
      ]
    }

### Usage

    require "./student_util"

    students = 'data/students.json'
    instructors = 'data/instructors.json'

    s = StudentUtil.new(students, instructors)
    s.even_groups_per_instructor
