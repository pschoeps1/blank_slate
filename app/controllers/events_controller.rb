class EventsController < ApplicationController
  
  def show
     @event = Event.find(params[:id])
  end
  
  def new
    @event = Event.new
  end
  
  def create
      @event = Event.new(event_params)
      if @event.save
        redirect_to @event
      else
        render 'new'
      end
    end
    
    def index
        @events = Event.all
      end

    private

      def event_params
        params.require(:event).permit(:name, :email, :start_at,
                                     :end_at, :content)
      end
end

