class CarsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :show ]

  def index         # GET /cars
    @cars = Car.all
  end

  def show          # GET /cars/:id
    id = Car.find(params[:id])
    @collectibles = Collectible.where(car_id: id)
    @car = Car.find(params[:id])

  end

  def new           # GET /cars/new
    @car = Car.new
  end

  def create        # POST /cars
    @car = Car.new(car_params)
    if @car.save
      redirect_to car_path(@car)
    else
      render :new
    end
  end

  def edit          # GET /cars/:id/edit
    @car = Car.find(params[:id])
  end

  def update        # PATCH /cars/:id
    @car = Car.find(params[:id])
    @car = Car.update(car_params)
    redirect_to user_collectibles_path
  end

  def destroy       # DELETE /cars/:id
    @car = Car.find(params[:id])
    @car.destroy
    redirect_to user_collectibles_path
  end

  private

  def car_params
    params.require(:car).permit(:model, :manufacturer, :year, :car_type)
  end
end
