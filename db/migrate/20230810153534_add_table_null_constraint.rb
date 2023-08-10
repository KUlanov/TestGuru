class AddTableNullConstraint < ActiveRecord::Migration[6.1]
  def change
    change_column_null(:questions, :body, false)
    change_column_null(:answers, :body, false)
    change_column_null(:users, :name, false)
    change_column_null(:categories, :title, false)
  end
end