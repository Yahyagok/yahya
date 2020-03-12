class School < ActiveRecord::Base
    belongs_to :city
    belongs_to :adviser


    def  self.most_teachers
        self.maximum("num_of_teachers")
    end

    def self.find_or_create_school_by_num_of_classes(num_of_classes)
        self.find_or_create_by(num_of_classes)

    end 


    
end


# I tried to make new instance method using one of 
# attributes ,num_of classes , so If I have that number ,
# it will pop up my school ,or 
# create new one school that has that number. 


# the reason why this method did not because I forgot to add an argument.  
