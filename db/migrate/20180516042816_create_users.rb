class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.text :name  
      t.text :email
      t.text :image
      t.boolean :admin, default: false
      t.string :password_digest

      t.timestamps
    end
  end
end
