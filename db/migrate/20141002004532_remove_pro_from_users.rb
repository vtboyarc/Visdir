class RemoveProFromUsers < ActiveRecord::Migration
  def up
    remove_column :users, :pro
  end

  def down
    add_column :users, :pro, :string
  end
end
