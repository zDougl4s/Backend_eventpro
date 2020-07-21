class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :location
      t.integer :price
      t.string :bio
      t.string :img_url
      t.integer :buy_entry
      t.integer :booked
      t.timestamps
    end
  end
end
