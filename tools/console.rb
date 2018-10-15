require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
s1 = Student.new("Leslie")
s2 = Student.new("Ada")
s3 = Student.new("Lovelace")

i1 = Instructor.new("Mike")
i2 = Instructor.new("Steven")
i3 = Instructor.new("Laura")

bt1 = BoatingTest.new(s1, "Ruby", "passed", i1)
bt2 = BoatingTest.new(s1, "HTML", "failed", i1)
bt3 = BoatingTest.new(s1, "Javascript", "failed", i3)
bt4 = BoatingTest.new(s1, "Rails", "passed", i2)
bt5 = BoatingTest.new(s1, "Python", "failed", i3)
binding.pry
0 #leave this here to ensure binding.pry isn't the last line
