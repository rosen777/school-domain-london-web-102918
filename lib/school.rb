require 'pry'

class School
  attr_accessor :roster, :name

  def initialize(roster)
    @roster = {}
    @student_name = name
  end

  def add_student(name, grade)
    # return list of students as a hash of grades pointing to an array
    roster[grade] ||= []
    roster[grade].push(name)
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    new_roster = { }
    roster.each do |grade, name|
    new_roster[grade] = name.sort
    end
    new_roster
  end

end

# puts school_of_rock = School.new("School of Rock")
# puts school_of_rock.add_student("Jack Black", 11)
# puts school_of_rock.add_student("Lady Gaga", 12)
# puts school_of_rock.roster
