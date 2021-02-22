class Admin::TicketsController < Admin::BaseController
  before_action :find_train, only: [:create, :new]
  before_action :find_begin, :find_end, only: [:new]
  before_action :find_ticket, only: [ :show ]

  def show
  end

  def new
    @ticket = @train.tickets.build
  end

  def create
    @ticket = @train.tickets.build(ticket_params)
    @ticket.begin_station = find_begin
    @ticket.end_station = find_end
    @ticket.user = User.first
    if @ticket.save
      redirect_to @ticket, note: 'Carriage successfully created!'
    else
      redirect_to new_train_ticket_path(@train)
    end
  end

  private

  def find_begin
    @begin_station = RailwayStation.find(params[:begin_station])
  end

  def find_end
    @end_station = RailwayStation.find(params[:end_station])
  end

  def find_train
    @train = Train.find(params[:train_id])
  end

  def find_ticket
    @ticket = Ticket.find(params[:id])
  end

  def ticket_params
    params.require(:ticket).permit(:first_name, :last_name, :middle_name,
                                   :passport)
  end
end
