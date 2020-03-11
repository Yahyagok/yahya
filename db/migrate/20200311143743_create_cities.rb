class CreateCities < ActiveRecord::Migration[6.0]
  def change
    create_table :cities do |t|
      t.string :name
      t.integer :num_of_parks 
      t.integer :population_in_milion 
    end 
  end
end
