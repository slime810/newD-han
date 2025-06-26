class Genre < ApplicationRecord
  self.primary_key = "genre_id"
  has_many :question
end
