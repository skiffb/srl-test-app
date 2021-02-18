class PurchaseMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def purchase_email
    @user = params[:user]
    @building = Building.find(params[:building_id])
    @owner = @building.owner
    @subclass = @building.subclass
    @address = @building.address
    mail(to: [@user, @owner], subject: "#{@subclass} has been purchased")
  end
end
