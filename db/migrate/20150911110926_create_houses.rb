class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.string :name
      t.references :court, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
