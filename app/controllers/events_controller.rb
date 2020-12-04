class EventsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
      @events = Event.still_available
  end

  def contact

  end

  def request_contact
    @name = params[:name]
    @email = params[:email]
    @telephone = params[:telephone]
    @message = params[:message]

    if @email.blank?
      flash[:alert] = I18n.t('events.request_contact.no_email')
      redirect_to contact_path
    else
      ContactMailer.contact_email(@name,@email,@telephone,@message).deliver_now
      flash[:notice] = I18n.t('events.request_contact.email_sent')
      redirect_to events_path
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)


    if(@event.save)
        redirect_to @event
    else
        render 'new'
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])

    if(@event.update(event_params))
        redirect_to @event
    else
        render 'new'
    end
  end

   def destroy
     @event = Event.find(params[:id])
     @event.destroy
     redirect_to events_path
   end

   def booking
     @event = Event.find(params[:id])
     @event.decrement(:guest_capacity)
     @event.save
     render 'guests/guest'
   end

  private def event_params
      params.require(:event).permit(:title, :description, :guest_capacity)
  end
end
