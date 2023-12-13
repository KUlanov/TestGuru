class AddNameAndTypeAttributesToUsers < ActiveRecord::Migration[6.1]
  def self.up
    rename_column :users, :role, :type
    change_column_default(:users, :type, 'User')
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_index :users, :type
  end

  def self.down
    change_column_default(:users, :type, from: 'User', to: nil)
    remove_index(:users, :type)
    rename_column :users, :type, :role
    remove_columns(:users, :first_name, :last_name)    
  end
end
