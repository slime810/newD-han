class CreateQuestions < ActiveRecord::Migration[8.0]
  def change
    create_table :questions do |t|
      t.primary_key :question_id
      t.text :question_stantement
      t.text :explanation
      t.reference :user_id
      t.reference :genre_id
      t.string :choices1
      t.string :choices2
      t.string :choices3
      t.string :choices4

      t.timestamps
    end
  end
end
