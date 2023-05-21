class Admin::BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])

    if @booking.update(booking_params)
      flash[:notice] = 'Booking was successfully updated.'
      redirect_to admin_bookings_path
    else
      flash[:alert] = @booking.errors.full_messages.join(', ')
      redirect_to edit_admin_booking_path(@booking)
    end
  end

  def destroy
    Booking.find(params[:id]).destroy

    flash[:notice] = 'Booking was successfully deleted.'
    redirect_to admin_bookings_path
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
