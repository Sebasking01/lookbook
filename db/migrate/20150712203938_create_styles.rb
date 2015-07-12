class CreateStyles < ActiveRecord::Migration
  def change
    create_table :styles do |t|
      t.string :image
      t.string :description
      t.integer :price

      t.timestamps null: false
    end
  end
end
