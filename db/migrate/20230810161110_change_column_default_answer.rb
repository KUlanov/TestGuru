class ChangeColumnDefaultAnswer < ActiveRecord::Migration[6.1]
  def change
    change_column_default(:answers, :right, true)
  end
end
