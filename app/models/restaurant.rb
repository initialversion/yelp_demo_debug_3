class Restaurant < ApplicationRecord
  # Direct associations

  has_many   :photos,
             :class_name => "Review",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
