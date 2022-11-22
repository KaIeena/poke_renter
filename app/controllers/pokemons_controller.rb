class PokemonsController < ApplicationController
  before_action :set_pokemon, only: %i[show]


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

  def set_pokemon
    @pokemon = Pokemon.find(params[:id])
  end


  def pokemon_params
    params.require(:pokemon).permit(:name, :typ, :hp, :atk, :def, :spd, :cap1, :cap2, :cap3, :cap4, :user_id)
  end

end
