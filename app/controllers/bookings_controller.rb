class BookingsController < ApplicationController
  #IMPORTANT TO NOTE: pas de "skip_before_action car je veux que la login session
  #soit obligatoire lorsque le user effectue un booking"
  before_action :set_van, only: [:new, :create]
  before_action :set_booking, only: [:show, :destroy]
  skip_after_action :verify_authorized # TO DO : remove ! (authorisation sur toutes les routes de bookings)

  def show
    @van = @booking.van
    authorize @booking
  end

  def new
    @booking = Booking.new
    # authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    authorize @booking
    @booking.van = @van
    if @booking.save!
      redirect_to booking_path(@booking), notice: 'Ton booking a bien été confirmé!'
    else
      render :new
    end
  end

  def destroy
    @van = @booking.van
    @booking.destroy
    redirect_to van_path(@van), notice: 'Ton booking a bien été annulé!'
  end

  private

  def set_van
    @van = Van.find(params[:van_id])
  end

  def set_booking
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def booking_params
    params.require(:booking).permit(:date, :price, :van_id) #pas de besoin d'ajouter un user_id
    #il est ajouté automatiquement dans la méthode create.
  end
end
