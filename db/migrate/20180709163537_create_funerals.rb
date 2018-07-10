class CreateFunerals < ActiveRecord::Migration[5.2]
  def change
    create_table :funerals do |t|
      t.string :disposition
      t.string :disposition_other
      t.string :officiant
      t.string :eulogist_1
      t.string :eulogist_2
      t.string :expense
      t.string :service_type
      t.belongs_to :religion, foreign_key: true
      t.belongs_to :funeral_home, foreign_key: true

      t.timestamps
    end
  end
end
