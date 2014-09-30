class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :budget
      t.string :low_budget
      t.string :high_budget
      t.string :location
      t.string :category
      t.string :photo

      t.timestamps
    end
  end
end
