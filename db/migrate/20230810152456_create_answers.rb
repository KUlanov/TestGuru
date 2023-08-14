class CreateAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :answers do |t|
      t.belongs_to :question
      t.string :body
      t.boolean :correct

      t.timestamps
    end
    change_column_null(:answers, :body, false)
    change_column_default(:answers, :correct, from: nil, to: false)
  end
end
