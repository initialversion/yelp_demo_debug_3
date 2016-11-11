class CreateRestarantTags < ActiveRecord::Migration
  def change
    create_table :restarant_tags do |t|
      t.integer :restaurant_id
      t.integer :tag_id

      t.timestamps

    end
  end
end
