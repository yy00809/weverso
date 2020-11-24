class EventsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
      @events = Event.all
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
