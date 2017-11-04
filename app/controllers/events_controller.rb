class EventsController < ApplicationController
  def index
    @events=Event.all? { |e|  }
  end
  def new

            @event=Event.new
  end

  def show
         @event =Event.find(params[:id])
  end

  def create
    @event = Event.new(user_params)
    if @event.save
      log_in @event
      redirect_to @event
    else
        render 'new'
    end
  end
   def event_params
    params.require(:event).permit(:date, :description, :space)
end
end
