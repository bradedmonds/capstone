class CreateArtists < ActiveRecord::Migration[6.1]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :instagram
      t.integer :followers
      t.string :facebook
      t.integer :likes
      t.string :spotify
      t.integer :listeners
      t.integer :score

      t.timestamps
    end
  end
end
