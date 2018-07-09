class CreateFunerals < ActiveRecord::Migration[5.2]
  def change
    create_table :funerals do |t|
      t.string :clergy
      t.string :eulogist_1
      t.string :eulogist_2
      t.belongs_to :religion, foreign_key: true
      t.belongs_to :expense, foreign_key: true
      t.belongs_to :funeral_home, foreign_key: true
      t.belongs_to :service_type, foreign_key: true

      t.timestamps
    end
  end
end
