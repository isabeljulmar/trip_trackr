class LocationsController < ApplicationController
  def index
    @locations = Location.all
  end

  def show
  end

  def new
  end

  def edit
  end
end
