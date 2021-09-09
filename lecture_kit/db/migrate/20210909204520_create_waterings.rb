class CreateWaterings < ActiveRecord::Migration[5.2]
  def change
    create_table :waterings do |t|
      t.timestamps
      t.belongs_to :plant
      t.belongs_to :person 
    end
  end
end
