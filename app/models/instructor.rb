class Instructor

    attr_accessor :test_status, :test_name, :student

    @@all = []

    def initialize(name)
        @name = name
        self.class.all << self
    end

    def pass_student(student, test_name)
        student_test = BoatingTest.all.find do |test|
            test.student == student && test.test_name == test_name
        end
        if student_test == nil
            BoatingTest.new(student, test_name, "passed", self) 
        else 
            student_test.test_status = "passed"
        end
        #if student = student && testname = testname 
        #then update test status to PASS

        #if student != student && testname != testname
    end

    def fail_student(student, test_name)
        student_test2 = BoatingTest.all.find do |test|
            test.student == student && test.test_name == test_name
        end
        if student_test2 == nil
            BoatingTest.new(student, test_name, "failed", self)
        else
            student_test2.test_status = "failed"
        end
    end

    def self.all
        @@all
    end

end
