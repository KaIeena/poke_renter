class BookingsController < ApplicationController
  before_action :set_booking, only: [:destroy]
  before_action :set_pokemon, only: [:new, :create]

  def index
    @bookings = Booking.where(user: current_user)
  end

  # def show
  # end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.pokemon = @pokemon

    if @booking.save
      redirect_to bookings_path, notice: "Booking was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @booking.destroy

    redirect_to bookings_path, notice: "Booking was successfully deleted."
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_pokemon
    @pokemon = Pokemon.find(params[:pokemon_id])
  end

  def booking_params
    params.require(:booking).permit(:user_id, :pokemon_id, :rent_period)
  end
end
