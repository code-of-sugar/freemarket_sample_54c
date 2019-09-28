class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :prefectures, null: false
      t.string :city, null: false
      t.string :address, null: false
      t.string :building
      t.string :postal_code, null: false
      t.timestamps
    end
  end
end
