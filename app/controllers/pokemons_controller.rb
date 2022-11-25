class PokemonsController < ApplicationController
  before_action :set_pokemon, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: :index

  def index
    @pokemons = Pokemon.all

    @pokemons = @pokemons.reject do |pokemon|
      pokemon.bookings != []
    end

    if params[:query]
      sql_query = <<~SQL
      pokemons.name @@ :query
      OR pokemons.typ @@ :query
      OR pokemons.cap1 @@ :query
      OR pokemons.cap2 @@ :query
      OR pokemons.cap3 @@ :query
      OR pokemons.cap4 @@ :query
      SQL
      @pokemons = Pokemon.where(sql_query, query: "%#{params[:query]}%")
    end
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
      redirect_to pokemons_path, notice: "Pokemon was successfully created."
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

  def dropped
    @pokemons = Pokemon.all
  end

  private

  def set_pokemon
    @pokemon = Pokemon.find(params[:id])
  end


  def pokemon_params
    params.require(:pokemon).permit(:photo, :name, :typ, :nature, :lvl, :hp, :atk, :def, :spd, :cap1, :cap2, :cap3, :cap4, :user_id)
  end

end
