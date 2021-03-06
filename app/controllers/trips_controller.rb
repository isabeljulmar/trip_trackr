class TripsController < ApplicationController
before_action :set_trip, only: [:show, :edit, :update, :destroy]

  def index
    @trips = Trip.all.order('created_at DESC')
  end

  def show
    @locations = @trip.locations.order( 'created_at ASC' )
  end

  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.new(trip_params)
    if @trip.save
      flash[:success] = Faker::StarWars.quote
      redirect_to trip_path(@trip)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @trip.update(trip_params)
      flash[:success] = Faker::StarWars.quote
      redirect_to trip_path(@trip)
    else
      render 'edit'
    end
  end

  def destroy
    @trip.destroy
    flash[:danger] = "Strike me down, and I will become more powerful than you could possibly imagine."
    redirect_to trips_path
  end

  private
    def trip_params
      params.require(:trip).permit(:trip_name, :trip_duration)
    end

    def set_trip
      @trip = Trip.find(params[:id])
    end
end
