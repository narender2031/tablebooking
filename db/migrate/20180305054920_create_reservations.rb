class CreateReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations do |t|
      t.string :reservations_type
      t.datetime :time
      t.integer :number_of_guests
      t.integer :table_number
      t.integer :table_setting_id
      t.string  :guest_mobile_number
      t.string  :guest_email

      t.timestamps
    end
  end
end
