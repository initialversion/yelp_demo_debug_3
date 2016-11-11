class Neighborhood < ApplicationRecord
  # Direct associations

  has_many   :restaurants,
             :dependent => :nullify

  belongs_to :city

  # Indirect associations

  # Validations

end
