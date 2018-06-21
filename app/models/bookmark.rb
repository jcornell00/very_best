class Bookmark < ApplicationRecord
  # Direct associations

  belongs_to :user

  belongs_to :restaurant

  belongs_to :dish

  # Indirect associations

  # Validations

end
