class City < ActiveRecord::Base
    has_many :schools 
    has_many :advisers, through: :schools
    


    def self.has_many_parks 
        self.maximum("num_of_parks")
    end 


    def self.popolation_bigger_than_a_million
        self.where("population_in_million > ?", 1)
    end 

    



end