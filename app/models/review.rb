class Review < ApplicationRecord
  # Direct associations

  has_many   :review_photos,
             :dependent => :destroy

  belongs_to :restaurant

  belongs_to :user

  # Indirect associations

  # Validations

end
