class Question < ApplicationRecord
  self.primary_key = "question_id"
  belongs_to :genre
  belongs_to :user
end
