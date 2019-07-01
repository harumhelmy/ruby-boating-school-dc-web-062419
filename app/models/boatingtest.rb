class BoatingTest

    attr_accessor :student, :instructor, :test_status, :test_name

    @@all = []

    def initialize(student, test_name, test_status, instructor)
        @student = student 
        @test_name = test_name
        @test_status = test_status
        @instructor = instructor
        self.class.all << self
    end 

    # def student 
    #     @student 
    # end

    # def student=(new_student)
    #     @student = new_student
    # end
    

    def self.all
        @@all
    end
end
