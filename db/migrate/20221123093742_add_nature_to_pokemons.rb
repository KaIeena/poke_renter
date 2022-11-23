class AddNatureToPokemons < ActiveRecord::Migration[7.0]
  def change
    add_column :pokemons, :nature, :string
  end
end
