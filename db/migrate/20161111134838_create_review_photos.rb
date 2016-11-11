class CreateReviewPhotos < ActiveRecord::Migration
  def change
    create_table :review_photos do |t|
      t.string :link
      t.integer :review_id

      t.timestamps

    end
  end
end
