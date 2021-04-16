class CreateConcerts < ActiveRecord::Migration[6.1]
  def change
    create_table :concerts do |t|
      t.integer :city_id
      t.integer :venue_id
      t.string :date
      t.string :name
      t.integer :artist_id
      t.string :ticket_link

      t.timestamps
    end
  end
end
