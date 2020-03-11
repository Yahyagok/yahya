class CreateAdvisers < ActiveRecord::Migration[6.0]
  def change
    create_table :advisers do |t|
      t.string :name
      t.string :grad_university
      t.boolean :has_car
    end 
  end
end
