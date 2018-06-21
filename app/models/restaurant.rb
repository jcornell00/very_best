class Restaurant < ApplicationRecord
  # Direct associations

  has_many   :bookmarks,
             :dependent => :destroy

  # Indirect associations

  has_many   :users,
             :through => :bookmarks,
             :source => :user

  has_many   :dishes,
             :through => :bookmarks,
             :source => :dish

  # Validations

end
