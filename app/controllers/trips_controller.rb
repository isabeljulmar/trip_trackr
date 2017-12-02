class TripsController < ApplicationController
before_action :set_trip, only: [:show, :edit, :update, :destroy]
  def index
    @trips = Trip.all
  end

  def show
  end

  def new
    @trip = Trip.new
    render partial: 'form'
  end

  def edit
  end

  def destroy
  end


  private
    def trip_params
      params.require(:trip).permit(:name, :id)
    end

    def set_trip
      @trip = Trip.find(params[:id])
    end

end
