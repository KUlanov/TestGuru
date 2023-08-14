class CreateAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :answers do |t|
      t.belongs_to :question, foreign_key: true
      t.string :body, null: false
      t.boolean :correct
      t.timestamps
    end
  end
end
