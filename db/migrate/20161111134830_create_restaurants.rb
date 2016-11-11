class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.text :description
      t.text :address
      t.integer :no_views
      t.integer :neighborhood
      t.float :average_rating
      t.string :website

      t.timestamps

    end
  end
end
