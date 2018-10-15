class Student

  attr_accessor :first_name
  @@all = []

  # should initialize with first_name
  def initialize(first_name)
    @first_name = first_name
    #each creation of new 'student' is collected in class var
    @@all << self
  end

# Student.all should return all of the student instances
  def self.all
    @@all #[student instances]
  end

  # Student#add_boating_test should initialize a new boating test with a student (Object), a boating test name (String), a boating test status (String), and an Instructor (Object)

  #instance method- creates a new test via class BoatingTest
  #'student' instance = self
  def add_boating_test(test_name, status, instructor)
    BoatingTest.new(self, test_name, status, instructor)
  end


  # Student.find_student will take in a student first name and output that student (Object)
  def self.find_student(name)
    self.all.find {|student| student.first_name == name}
  end

end
