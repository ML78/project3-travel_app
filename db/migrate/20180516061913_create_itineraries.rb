class CreateItineraries < ActiveRecord::Migration[5.1]
  def change
    create_table :itineraries do |t|
      t.string :name
      t.integer :user_id
      t.date :date

      t.timestamps
    end
  end
end
