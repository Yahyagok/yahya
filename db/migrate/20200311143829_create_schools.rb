class CreateSchools < ActiveRecord::Migration[6.0]
  def change
    create_table :schools do |t|
      t.integer :adviser_id 
      t.integer :city_id 
      t.integer :num_of_teachers 
      t.integer :num_of_employees
      t.integer :num_of_classes 
    end 
  end
end
