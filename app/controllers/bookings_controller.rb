class BookingsController < ApplicationController
  #IMPORTANT TO NOTE: pas de "skip_before_action car je veux que la login session
  #soit obligatoire lorsque le user effectue un booking"
  before_action :set_van, only: [:new, :create]

  def show
    @booking = Booking.find(params[:id])
    @van = @booking.van
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.van = @van
    if @booking.save!
      redirect_to booking_path(@booking), notice: 'Your booking was successfully confirmed!'
    else
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @van = @booking.van
    @booking.destroy
    redirect_to van_path(@van), notice: 'Your booking was successfully cancelled!'
  end

  private

  def set_van
    @van = Van.find(params[:van_id])
  end

  def booking_params
    params.require(:booking).permit(:date, :price, :van_id) #pas de besoin d'ajouter un user_id
    #il est ajouté automatiquement dans la méthode create.
  end
end
