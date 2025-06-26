json.extract! question, :id, :question_id, :question_stantement, :explanation, :user_id, :genre_id, :choices1, :choices2, :choices3, :choices4, :created_at, :updated_at
json.url question_url(question, format: :json)
