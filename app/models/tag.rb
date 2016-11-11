class Tag < ApplicationRecord
  # Direct associations

  has_many   :restarant_tags,
             :dependent => :nullify

  # Indirect associations

  has_many   :restaurants,
             :through => :restarant_tags,
             :source => :restaurant

  # Validations

end
