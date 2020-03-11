class School < ActiveRecord::Base
    belongs_to :city
    belongs_to :adviser


    def  self.most_teachers
        self.maximum("num_of_teachers")
    end

    def self.find_or_create_school_by_num_of_classes
        self.find_or_create_by(num_of_classes)

    end 


    
end
