class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students  do |t|
      t.integer :adviser_id 
      t.string :name 
      t.boolean :has_cellphone
      t.boolean :naughty
    end 
  end
end
