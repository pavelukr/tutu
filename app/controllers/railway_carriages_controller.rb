class RailwayCarriagesController < ApplicationController
  before_action :find_train, only: [:create, :new]
  before_action :find_carriage, only: [:show]

  def show
  end

  def new
    @railway_carriage = @train.railway_carriages.build
  end

  def create
    @railway_carriage = @train.railway_carriages.build(railway_carriage_params)
    if @railway_carriage.save
      redirect_to @train, note: 'Carriage successfully created!'
    else
      redirect_to new_train_railway_carriage_path(@train)
    end
  end

  def destroy
    @railway_carriage.destroy
    respond_to do |format|
      format.html { redirect_to train_railway_carriages_url, notice: "Railway carriage was successfully destroyed." }
    end
  end

  private

  def find_train
    @train = Train.find(params[:train_id])
  end

  def find_carriage
    @railway_carriage = RailwayCarriage.find(params[:id])
  end

  def railway_carriage_params
    params.require(:railway_carriage).permit(:type, :top_seats, :bottom_seats,
                                             :side_top_seats, :side_bottom_seats, :seat_place)
  end
end
