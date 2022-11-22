class PokemonsController < ApplicationController
  def index
    @pokemons = Pokemon.all
  end

  def show

  end

  def create
    @pokemon = Pokemon.new(pokemon_params)

    if @pokemon.save
      redirect_to @pokemon, notice: "Pokemon was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def new
    @pokemon = Pokemon.new
  end

  # def edit
  # end

  # def update
  # end

  # def destroy
  # end

  private


  def pokemon_params
    params.require(:pokemon).permit(:name, :type, :hp, :atk, :def, :spd, :cap1, :cap2, :cap3, :cap4, :user_id)
  end

end
