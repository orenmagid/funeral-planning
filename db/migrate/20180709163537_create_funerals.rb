class CreateFunerals < ActiveRecord::Migration[5.2]
  def change
    create_table :funerals do |t|
      t.string :clergy
      t.string :eulogist_1
      t.string :eulogist_2
      t.string :religion
      t.string :expense
      t.string :service_type
      t.belongs_to :funeral_home, foreign_key: true

      t.timestamps
    end
  end
end
