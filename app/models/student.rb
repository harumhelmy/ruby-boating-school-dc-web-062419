class Student

    attr_accessor :add_boating_test
    
    @@all = []

    def initialize(first_name)
        @first_name = first_name
        self.class.all << self
    end

    def self.all
        @@all
    end

    def add_boating_test (test_name, test_status, instructor)
        new_boating_test = BoatingTest.new(test_name, test_status, instructor)
    end
        
        # initializes a new boating test with a
        # Student (instance)
        # boating test name
        # boating test status
        # instructor instance

    def self.find_student(first_name)
        
    end








end
