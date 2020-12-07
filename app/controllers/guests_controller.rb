# Returning response to requests from events view
class GuestsController < ApplicationController
  def create
    @event = Event.find(params[:event_id])
    @guest = @event.guests.create(guest_params)
    flash[:alert] = I18n.t('guests.booking.success')
    redirect_to events_path
  end

  private def guest_params
    params.require(:guest).permit(:fullname, :email, :phonenumber)
  end

end
