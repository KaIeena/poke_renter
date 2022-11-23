class AddLvlToPokemons < ActiveRecord::Migration[7.0]
  def change
    add_column :pokemons, :lvl, :integer
  end
end
