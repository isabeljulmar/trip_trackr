class LocationsController < ApplicationController
  before_action :location_set, only: [:edit, :update, :destroy]
  before_action :trip_set, except: [:new_no_nest, :no_nest_create]

  def new
    @locations = Location.all
    @location = @trip.locations.new
  end

  def new_no_nest
    @location = Location.new
    @trips = Trip.all
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

  def no_nest_create
    @location = Location.new(location_params)
    if @location.save
      flash[:success] = Faker::StarWars.quote
      redirect_to trips_path
    else
      render 'new_no_nest'
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
      params.require(:location).permit(:name, :address, :trip_id)
    end

    def trip_set
      @trip = Trip.find(params[:trip_id])
    end
end
