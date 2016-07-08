# Student Utilities

## Student Util

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

_Create even groups for each instructor:_

    s.even_groups_per_instructor

## Squad Util

### Data

squadname.json

    {
      "repo": "repo_name",
      "squad": [
        { "name": "Bryan Mytko", "github": "bryanmytko" },
        { "name": "David Heinemeier Hansson", "github": "dhh" }
      ]
    }

### Usage

    require './squad_util';
    su = SquadUtil.new('data/squadname.json')

_Clone squad repos:_

__This assumes you have access to clone these repositories__

    su.clone_squad_repos('/Users/yourname/Desktop')
