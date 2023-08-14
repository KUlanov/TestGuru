class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.belongs_to :test
      t.string :body

      t.timestamps
    end
    change_column_null(:questions, :body, false)
  end
end
