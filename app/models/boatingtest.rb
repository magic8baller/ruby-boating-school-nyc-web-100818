class BoatingTest

  attr_accessor :student, :test_name, :status, :instructor

  @@all = []

  #boating test = join table! will hold all the data for Student and Instructor, and other data they will need to access
  def initialize(student, test_name, status, instructor)
    @student = student
    @test_name = test_name
    @status = status
    @instructor = instructor
    @@all << self
  end

  def self.all
    @@all #[test data]
  end

end
