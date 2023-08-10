class ChangeColumnDefaultTable < ActiveRecord::Migration[6.1]
  def change
    change_column_default(:tests, :level, 0)
  #  change_column_default (:questions, :right, true)
  end
end
