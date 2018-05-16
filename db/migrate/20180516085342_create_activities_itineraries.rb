class CreateActivitiesItineraries < ActiveRecord::Migration[5.1]
  def change
    create_table :activities_itineraries do |t|
      t.integer :activity_id
      t.integer :itinerary_id
    end
  end
end
