class RailwayCarriagesController < ApplicationController
  before_action :set_railway_carriage, only: [:show, :edit, :update, :destroy]

  def index
    @railway_carriages = RailwayCarriage.all
  end

  def show
  end

  def new
    @railway_carriage = RailwayCarriage.new
  end

  def create
    @railway_carriage = RailwayCarriage.new(railway_carriage_params)

    if @railway_carriage.save
      redirect_to @railway_carriage
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @railway_carriage.update(railway_carriage_params)
      redirect_to @railway_carriage
    else
      render :edit
    end
  end

  def destroy
    @railway_carriage.destroy
    respond_to do |format|
      format.html { redirect_to railway_carriages_url, notice: "Railway carriage was successfully destroyed." }
    end
  end

  private

  def set_railway_carriage
    @railway_carriage = RailwayCarriage.find(params[:id])
  end

  def railway_carriage_params
    params.require(:railway_carriage).permit(:type_of_carriage, :num_of_top_seats, :num_of_bottom_seats, :train_id)
  end
end