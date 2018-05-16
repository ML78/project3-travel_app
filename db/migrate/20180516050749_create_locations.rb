class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.text :name
      t.text :country
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
