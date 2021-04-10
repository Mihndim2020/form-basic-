class DriversController < ApplicationController
  def index
    @drivers = Driver.all
  end

  def new
    @driver = Driver.new
    @driver.build_license
  end

  def create 
    @driver = Driver.new(driver_params)
    if @driver.save 
      redirect_to drivers_url
    else 
      render 'new' 
    end
  end 
  def destroy 
    @driver = Driver.find(params[:id])
    @driver.destroy
    redirect_to drivers_url
  end
  private 
  def driver_params 
    params.require(:driver).permit(:first_name, :last_name, license_attributes: [:number, :state] )
  end
end
