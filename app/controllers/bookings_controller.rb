class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    booking = Booking.new(booking_params)

    if booking.save
      flash[:notice] = 'Booking was successfully created.'
      redirect_to bookings_path
    else
      flash[:alert] = booking.errors.full_messages.join(', ')
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(
      :first_name,
      :last_name,
      :animal_name,
      :animal_type,
      :hours_requested,
      :date_of_service
    )
  end
end
