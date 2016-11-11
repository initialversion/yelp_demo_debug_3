class City < ApplicationRecord
  # Direct associations

  has_many   :neighborhoods,
             :dependent => :nullify

  # Indirect associations

  has_many   :restaurants,
             :through => :neighborhoods,
             :source => :restaurants

  # Validations

end
