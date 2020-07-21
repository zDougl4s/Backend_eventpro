class TicketsController < ApplicationController
    skip_before_action :authorized
    
      def create
        @ticket = Ticket.create(ticket_params)
        render json: @ticket
      end
      
      def index
        @ticket = Ticket.all
      end

      def show
        @ticket = Ticket.find(params[:user_id, :event_id])
      end

    private

    def ticket_params
        params.require(:ticket).permit(:user_id, :event_id)
    end
end




