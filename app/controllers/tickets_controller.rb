class TicketsController < ApplicationController
    skip_before_action :authorized
    
    def index
      @tickets = Ticket.all
      render json: @tickets
    end

    def show
      @ticket = Ticket.find(params[:id])
      render json: @ticket
    end
    # "/tickets/1"
    # /tickets
    # .then(fiter id == user_id)
    # .then( mytickets: [])
    def create
      @ticket = Ticket.create(ticket_params)
      render json: @ticket
    end
      
    def destroy
      @ticket = Ticket.find(params[:id])
      @ticket.destroy
      render json: @ticket
    end

    private

    def ticket_params
        params.require(:ticket).permit(:user_id, :event_id)
    end
end




