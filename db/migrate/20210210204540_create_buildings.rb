class CreateBuildings < ActiveRecord::Migration[6.0]
  def change
    create_table :buildings do |t|
      t.string :owner, null: false
      t.string :address
      t.integer :rooms
      t.integer :sqmt
      t.integer :floors
      t.boolean :air_cond
      t.decimal :price, null: false
      t.integer :units
      t.integer :shops
      t.integer :parking
      t.integer :subclass

      t.timestamps
    end
  end
end
