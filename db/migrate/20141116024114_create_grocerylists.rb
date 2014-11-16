class CreateGrocerylists < ActiveRecord::Migration
  def change
    create_table :grocerylists do |t|
      t.string :user
      t.text :grocerylist

      t.timestamps
    end
  end
end
