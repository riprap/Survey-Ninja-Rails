class RemoveQuestionFromQuestions < ActiveRecord::Migration
  def change
    remove_column :questions, :question, :string
  end
end
