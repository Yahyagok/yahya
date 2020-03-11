class Student < ActiveRecord::Base
    belongs_to :adviser 


    def self.student_who_is_naughty 
        self.where("naughty": true)
    end 

    def self.student_sort_by_name
        self.order(name: :asc)
    end 

    def adviser_cities 
        self.adviser.cities 
    end 

    




end 