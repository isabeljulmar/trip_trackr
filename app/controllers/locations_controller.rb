class LocationsController < ApplicationController
  before_action :location_set, only: [:edit, :update, :destroy]
  before_action :trip_set

  def new
    @locations = Location.all
    @location = @trip.locations.new
  end

  def create
    @location = @trip.locations.new(location_params)
    if @location.save
      flash[:success] = Faker::StarWars.quote
      redirect_to trip_path(@trip)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @location.update(location_params)
      flash[:success] = Faker::StarWars.quote
      redirect_to trip_path(@trip)
    else
      render 'edit'
    end
  end

  def destroy
      @location.destroy
      flash[:danger] = "Strike me down, and I will become more powerful than you could possibly imagine."
      redirect_to trip_path(@trip)
  end

  private
    def location_set
      @location = Location.find(params[:id])
    end

    def location_params
      params.require(:location).permit(:name, :address)
    end

    def trip_set
      @trip = Trip.find(params[:trip_id])
    end
end
