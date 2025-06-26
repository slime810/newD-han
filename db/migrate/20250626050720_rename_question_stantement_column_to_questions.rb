class RenameQuestionStantementColumnToQuestions < ActiveRecord::Migration[8.0]
  def change
    rename_column :questions, :question_stantement, :question_statement
  end
end
