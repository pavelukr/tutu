class TicketsController < ApplicationController
  before_action :find_ticket, only: [ :show ]

  def show
  end

  def new
    @ticket = Ticket.new
  end

  def create
    @train = Ticket.new(ticket_params)

    respond_to do |format|
      if @ticket.save
        redirect_to @ticket, note: 'Ticket successfully bought!'
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  private

  def find_ticket
    @ticket = Ticket.find(params[:id])
  end

  def ticket_params
    params.require(:ticket).permit(:first_name, :last_name, :middle_name,
                                             :train_id, :begin_station_id, :end_station_id)
  end
end
