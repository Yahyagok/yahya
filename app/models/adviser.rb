require'pry'
class Adviser < ActiveRecord::Base
    has_many :schools
    has_many :cities, through: :schools
    has_many :students 


    def self.last_adviser_students 
        self.last.students 
    end 


    def self.has_car 
        self.where("has_car", true)
    end 



    def helper_method
      
        #binding.pry
        School.all.select do |school|
            school.adviser == self 
        end 
    end 

    def num_of_parks_that_adviser
        helper_method.map do |school|
            school.city
        end 
    end 

    
    def my_schools 
        School.select do |school|
            school.adviser
        end
    end


    def schools_that_all_employee_numbers 
            my_schools.map do |school|
            school.num_of_employees
       end
        
    end 


end

# for school_that_all_employee_numbers method, I used helper ,method my_schools,

#before I was tying to reach from adviser to city (like skipping the join table, School)
#that was my probelm , ths time I did go through from adviser to school and then to city 


#Additionally, you said that some of my methods are advenced I found them https://guides.rubyonrails.org/active_record_querying.html
#and I chose the methods that I understand how it works , also guides have a some examples 
#I looked the examples and applied to my method. 





