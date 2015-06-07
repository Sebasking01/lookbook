class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.belongs_to :user, index: true
      t.integer :amount
      t.datetime :date
      t.boolean :confirmed

      t.timestamps null: false
    end
    add_foreign_key :appointments, :users
  end
end
