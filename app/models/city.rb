class City < ActiveRecord::Base
    has_many :schools 
    has_many :advisers, through: :schools
    


    def self.has_many_parks 
        self.maximum("num_of_parks")
    end 


    def self.popolation_bigger_than_a_million
        self.where("population_in_million > ?", 1)
    end 



    def school_macthes_to_that_city
        School.select do |school|
            school.city == self 
        end 
    end 

    def advisers_for_that_city

        school_macthes_to_that_city.map do |school|
            school.adviser 
        end 

    end 

    



end

#I tried to get comfortable to helper methods 
#and make more methods 
