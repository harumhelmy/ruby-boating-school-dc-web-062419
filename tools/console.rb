require_relative '../config/environment.rb'
require 'pry'

def reload
  load 'config/environment.rb'
end

spongebob = Student.new("Spongebob")
patrick = Student.new("Patrick")

puff= Instructor.new("Ms.Puff")
krabs= Instructor.new("Mr.Krabs")

no_crashing = spongebob.add_boating_test("Don't Crash 101", "pending", puff)
power_steering_failure = patrick.add_boating_test("Power Steering 202", "failed", puff)
power_steering_pass = patrick.add_boating_test("Power Steering 201", "passed", krabs)

puff.pass_student(spongebob, "Don't Crash 101")
krabs.pass_student(spongebob, "Power Steering 201")

binding.pry
#leave this here to ensure binding.pry isn't the last line
0