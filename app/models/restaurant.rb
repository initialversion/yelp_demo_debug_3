class Restaurant < ApplicationRecord
  # Direct associations

  has_many   :restarant_tags,
             :dependent => :nullify

  has_many   :photos,
             :class_name => "Review",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
