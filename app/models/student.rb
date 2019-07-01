class Student

    attr_accessor :add_boating_test, :first_name
    
    @@all = []

    def initialize(first_name)
        @first_name = first_name
        self.class.all << self
    end

    def self.all
        @@all
    end

    def add_boating_test (test_name, test_status, instructor)
        BoatingTest.new(self, test_name, test_status, instructor)
    end
        
        # initializes a new boating test with a
        # Student (instance)
        # boating test name
        # boating test status
        # instructor instance

    def self.find_student(first_name)
        self.all.find do |student|
             student.first_name = first_name
        end
    end
    
    def find_tests
        BoatingTest.all.select do |test|
            test.student == self
        end
    end


    def grade_percentage
    
    end








end
