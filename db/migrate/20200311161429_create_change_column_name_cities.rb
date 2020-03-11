class CreateChangeColumnNameCities < ActiveRecord::Migration[6.0]
  def change
    rename_column :cities, :population_in_milion, :population_in_million

  end
end

