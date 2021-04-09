class DriversController < ApplicationController
  def index
    @drivers = Driver.all
  end

  def new
    @driver = Driver.new
  end

  def create 
    @driver = Driver.new(params.require(:driver).permit(:first_name, :last_name))
    if @driver.save 
      redirect_to drivers_url
    else 
      render 'new' 
    end
  end 
end
