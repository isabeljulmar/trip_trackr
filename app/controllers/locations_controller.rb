class LocationsController < ApplicationController
  before_action :location_set, only: [:show, :edit, :update, :destroy]

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
      flash[:success] = Faker::StarWars.quote
      redirect_to location_path(@location)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @location.update(location_params)
      flash[:success] = Faker::StarWars.quote
      redirect_to location_path(@location)
    else
      render 'edit'
    end
  end

  def destroy
      @location.destroy
      flash[:danger] = "Strike me down, and I will become more powerful than you could possibly imagine."
      redirect_to locations_path
  end

  private
    def location_set
      @location = Location.find(params[:id])
    end

    def location_params
      params.require(:location).permit(:name, :address)
    end
end
