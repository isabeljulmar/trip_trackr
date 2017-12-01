class LocationsController < ApplicationController
  before_action :location_set, only: [:show, :edit, :update]

  def index
    @locations = Location.all
  end

  def show
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.new(location_params)
    if @location.save
      redirect_to location_path(@location)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @location.update(location_params)
      redirect_to location_path(@location)
    else
      render 'edit'
    end
  end

  private
    def location_set
      @location = Location.find(params[:id])
    end

    def location_params
      params.require(:location).permit(:name, :address)
    end
end
