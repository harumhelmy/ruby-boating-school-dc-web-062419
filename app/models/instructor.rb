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
        binding.pry
        #if student = student && testname = testname 
        #then update test status to PASS

        #if student != student && testname != testname
    end

    def fail_student(student, test_name)

    end

    def self.all
        @@all
    end

end
