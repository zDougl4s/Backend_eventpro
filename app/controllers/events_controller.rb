class EventsController < ApplicationController
    skip_before_action :authorized
  
    def index
      @event = Event.all
      render json: @event
    end
  
    def show
      @event = Event.find(params[:id])
      render json: @event
    end
  
    def create
      @event = Event.create(event_params)
      render json: @event
    end
  
    private
    def event_params
      params.require(:event).permit(:event_id, :user_id)
    end
  end