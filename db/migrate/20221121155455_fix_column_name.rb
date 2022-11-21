class FixColumnName < ActiveRecord::Migration[7.0]
  def self.up
    rename_column :pokemons, :type, :typ
  end
end
