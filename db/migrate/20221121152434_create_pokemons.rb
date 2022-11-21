class CreatePokemons < ActiveRecord::Migration[7.0]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.string :type
      t.references :user, null: false, foreign_key: true
      t.integer :hp
      t.integer :atk
      t.integer :def
      t.integer :spd
      t.string :cap1
      t.string :cap2
      t.string :cap3
      t.string :cap4

      t.timestamps
    end
  end
end
