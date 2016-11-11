class Tag < ApplicationRecord
  # Direct associations

  has_many   :restarant_tags,
             :dependent => :nullify

  # Indirect associations

  # Validations

end
