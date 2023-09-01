class CreateUsertests < ActiveRecord::Migration[6.1]
  def change
    create_table :usertests do |t|
      t.belongs_to :test, foreign_key: true
      t.belongs_to :user, foreign_key: true
      t.boolean :status, default: false

      t.timestamps
    end
  end
end
