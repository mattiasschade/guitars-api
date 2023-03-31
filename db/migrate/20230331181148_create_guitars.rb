class CreateGuitars < ActiveRecord::Migration[7.0]
  def change
    create_table :guitars do |t|
      t.string :brand
      t.string :name
      t.string :color
      t.string :fretboard

      t.timestamps
    end
  end
end
