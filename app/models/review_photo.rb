class ReviewPhoto < ApplicationRecord
  # Direct associations

  belongs_to :review

  # Indirect associations

  has_one    :restaurant,
             :through => :review,
             :source => :restaurant

  # Validations

end
