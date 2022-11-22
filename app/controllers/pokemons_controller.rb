class PokemonsController < ApplicationController
  before_action :set_pokemon, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: :index

  def index
    @pokemons = Pokemon.all
  end

  def show
  end

  def new
    @pokemon = Pokemon.new
  end

  def create
    @pokemon = Pokemon.new(pokemon_params)
    @pokemon.user = current_user

    if @pokemon.save
      redirect_to @pokemon, notice: "Pokemon was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @pokemon.update(pokemon_params)
      redirect_to @pokemon, notice: "Article was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @pokemon.destroy

    redirect_to pokemons_path
  end

  private

  def set_pokemon
    @pokemon = Pokemon.find(params[:id])
  end


  def pokemon_params
    params.require(:pokemon).permit(:photo, :name, :typ, :hp, :atk, :def, :spd, :cap1, :cap2, :cap3, :cap4, :user_id)
  end

  def set_pokemon
    @pokemon = Pokemon.find(params[:id])
  end

end
