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



    def cities_all_parks
        park_numbers= []
        self.cities.each do |city|
        park_numbers.push(city.num_of_parks)
        end 
        park_numbers 
    end 

    def schools_that_all_employee_numbers 
        self.schools.map do |school|
        school.num_of_employees
        end 
        number 
    end 



end