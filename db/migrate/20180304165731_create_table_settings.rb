class CreateTableSettings < ActiveRecord::Migration[5.1]
  def change
    create_table :table_settings do |t|
      t.integer :table_number
      t.string  :status
      t.integer :seats
      t.string  :section
      
      t.timestamps
    end
  end
end
