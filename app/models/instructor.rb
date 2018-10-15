class Instructor

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name #instructor instance
    @@all << self #stores all created instructors
  end

  def self.all
    @@all
  end

    #access .BoatingTest = join table, has student, instructor, test_name
  def self.pass_student(student, test_name)
        #find student and test for the instance of that instructor
    good_test = BoatingTest.all.find { |tests| tests.student == student && tests.test_name == test_name }

    #change status to passed
    good_test.status  = "passed"
  end

    #access .BoatingTest = join table, has student, instructor, test_name
  def self.fail_student(student, test_name)
      #find student and tests respective to this instance of an instructor
    bad_test = BoatingTest.all.find { |tests| tests.student == student && tests.test_name == test_name }

    #change status to failed
    bad_test.status  = "failed"
  end

  def self.student_grade_percentage(student)
    #get all tests for this one instance of student
    #boating test has/knows first name
    student_test = BoatingTest.all.select {|b_test| b_test.student == student}
    total_test = student_test.size
    #binding.pry
    passed_test = student_test.select {|b_test| b_test.status == "passed"}

    total_passed = passed_test.size

    grade_avg = (total_passed.to_f/total_test.to_f) * 100
  end

end
