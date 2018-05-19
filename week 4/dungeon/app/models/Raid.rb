class Raid < ApplicationRecord
  validates :username, length: {in:1..100}

end
