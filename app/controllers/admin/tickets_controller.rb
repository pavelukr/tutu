class Admin::TicketsController < ApplicationController
  before_action :authenticate_user!
  before_action :check_admin, only: :edit
  before_action :find_train, only: [:create, :new]
  before_action :find_begin, :find_end, only: [:new]
  before_action :find_ticket, only: [:show, :edit, :destroy, :update]

  def index
    if current_user.admin
      @tickets = Ticket.all
    else
      @tickets = current_user.tickets
    end
  end

  def show
  end

  def new
    @ticket = @train.tickets.build
  end

  def create
    @ticket = @train.tickets.build(ticket_params)
    @ticket.begin_station = find_begin
    @ticket.end_station = find_end
    @ticket.user = current_user
    if @ticket.save
      redirect_to [:admin, @ticket], note: 'Ticket successfully bought!'
    else
      redirect_to new_admin_train_ticket_path(@train)
    end
  end

  def edit
  end

  def update
    if @ticket.save
      redirect_to [:admin, @ticket], note: 'Ticket successfully updated!'
    else
      redirect_to edit_admin_ticket_path(@train)
    end
  end

  def destroy
    @ticket.destroy
    respond_to do |format|
      format.html { redirect_to admin_train_tickets_url(Train.all), notice: "Ticket was successfully destroyed." }
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

  def check_admin
    redirect_to admin_train_tickets_path(Train.all), alert: "You don't have permission for editing tickets" unless current_user.admin?
  end
end
