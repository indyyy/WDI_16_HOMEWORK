class HousesController < ApplicationController

  def index
  end
  
  def index
     @houses = House.all
     # @house = House.new
    render :index
  end

  def show
    @house = House.find(params[:id])
    render :show
  end

end


