class CreateDispositions < ActiveRecord::Migration[5.2]
  def change
    create_table :dispositions do |t|
      t.string :disposition_type

      t.timestamps
    end
  end
end
