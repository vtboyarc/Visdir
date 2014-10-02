class RemoveRegularFromUsers < ActiveRecord::Migration
  def up
    remove_column :users, :regular
  end

  def down
    add_column :users, :regular, :string
  end
end
