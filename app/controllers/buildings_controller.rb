class BuildingsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    if params["building"]["subclass"] == "house"
      @building = House.new(building_params)
    elsif params["building"]["subclass"] == "complex_building"
      @building = ComplexBuilding.new(building_params)
    else
      @building = CommercialUnit.new(building_params)
    end
    if @building.save
      flash[:success] = "Building created"
      redirect_to root_url  
    else
      flash[:error] = "Error. Please try again. Fill out form completely with correct email"
      redirect_to new_building_path
    end
  end

  def index
    @buildings = Building.all.order("created_at DESC")
  end

  def new
    @building = Building.new
  end

  private 

  def building_params
    params.require(:building).permit(:owner, :address, :rooms, :sqmt, :floors, :air_cond, :price, :units, :shops, :parking, :subclass, :image)
  end
end
