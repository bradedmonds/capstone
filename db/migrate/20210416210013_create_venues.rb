class CreateVenues < ActiveRecord::Migration[6.1]
  def change
    create_table :venues do |t|
      t.integer :city_id
      t.string :name
      t.string :address
      t.integer :capacity
      t.string :category

      t.timestamps
    end
  end
end