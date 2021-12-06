class CreateStudios < ActiveRecord::Migration[6.1]
  def change
    create_table :studios do |t|
      t.string :name
      t.text :details
      t.integer :type, array: true, default: []
      t.integer :min_booking_time
      t.integer :max_occupancy
      t.integer :availability_hours
      t.integer :booking_request_time
      t.string :past_clients, array: true, default: []
      t.string :audio_samples, array: true, default: []
      t.string :amenities, array: true, default: []
      t.string :equipment, array: true, default: []
      t.text :rules
      t.text :cancellation_policy
      t.text :addess
      t.decimal :price_per_hour
      t.integer :discount
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
