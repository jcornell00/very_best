class Dish < ApplicationRecord
  # Direct associations

  has_many   :bookmarks,
             :dependent => :destroy

  # Indirect associations

  has_many   :users,
             :through => :bookmarks,
             :source => :user

  has_many   :restaurants,
             :through => :bookmarks,
             :source => :restaurant

  # Validations

end
