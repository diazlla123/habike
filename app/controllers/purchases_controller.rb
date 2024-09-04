class PurchasesController < ApplicationController
  before_action :authenticate_user!
  def create
    @purchase = Purchase.new(purchase_params)
    @purchase.user = current_user

    if @purchase.save!
      Bike.find(@purchase.bike_id).status = "sold"
      Bike.find(@purchase.bike_id).update(Bike.find(params[:bike_id]).status)
      redirect_to bikes_path, notice: 'Purchase was successfully created.'
    else
      render 'bikes/show', alert: "You are not logged in"
    end
  end

  private

  def purchase_params
    params.require(:purchase).permit(:bike_id)
  end
end
