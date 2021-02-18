class PurchasesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    @user = params[:email]
    @building = Building.find(params[:building_id])
    @purchase = Purchase.new(user: @user, building: @building)
    
      if @purchase.save
        VeryLongTaskJob.perform_later(user: @user, building_id: @building.id)
        flash[:success] = "Purchase succesful. Check your email."
        redirect_to root_url      
      else
        flash[:error] = "Error, please try again. Ensure email is correct"
        redirect_to root_url
      end
    
  end
end
