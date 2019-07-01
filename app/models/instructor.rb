class Instructor

    @@all = []

    def initialize(name)
        @name = name
        self.class.all << self
    end

    def pass_student(student, test_name)
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
