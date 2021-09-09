class CreatePlantCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :plant_categories do |t|
      t.belongs_to :category
      t.belongs_to :plant

    end
  end
end
