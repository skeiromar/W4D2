class CreateCarRentalRequest < ActiveRecord::Migration[5.2]
  def change
    create_table :car_rental_requests do |t|
      t.integer :cat_id, null: false
      t.date :start_date, null: false
      t.date :end_date, null: false
      t.integer :status, null: false, default: 'PENDING'
      t.timestamps
    end
    add_index :car_rental_requests, :cat_id
  end
end
