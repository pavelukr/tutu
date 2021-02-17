class RailwayCarriagesController < ApplicationController
  before_action :find_train, only: [:create, :new]

  def show
  end

  def new
    @railway_carriage = @train.railway_carriages.build
  end

  def create
    @carriage = @train.railway_carriages.build(railway_carriage_params)
    if @carriage.save
      redirect_to @train, note: 'Carriage successfully created!'
    else
      redirect_to train_path(@train)
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

  def railway_carriage_params
    params.require(:railway_carriage).permit(:type, :top_seats, :bottom_seats,
                                             :side_top_seats, :side_bottom_seats, :seat_place)
  end
end
