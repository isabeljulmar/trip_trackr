class LocationsController < ApplicationController
  before_action :location_set, only: [:show]

  def index
    @locations = Location.all
  end

  def show
  end

  def new
  end

  def edit
  end

  private
    def location_set
      @location = Location.find(params[:id])
    end
end
