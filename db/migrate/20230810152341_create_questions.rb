class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.belongs_to :test, foreign_key: true
      t.string :body, null: false

      t.timestamps
    end
  end
end
