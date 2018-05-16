class CreateActivities < ActiveRecord::Migration[5.1]
  def change
    create_table :activities do |t|
      t.text :name
      t.text :description
      t.text :category
      t.text :image
      t.string :place
      t.integer :location_id

      t.timestamps
    end
  end
end
