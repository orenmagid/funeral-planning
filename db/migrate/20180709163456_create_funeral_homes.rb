class CreateFuneralHomes < ActiveRecord::Migration[5.2]
  def change
    create_table :funeral_homes do |t|
      t.string :name
      t.integer :phone
      t.string :location

      t.timestamps
    end
  end
end
