class PurchasesController < ApplicationController
  before_action :authenticate_user!

  def create
    @purchase = Purchase.new(purchase_params)
    @bike = Bike.find(@purchase.bike_id)
    @purchase.buyer_id = current_user.id

    if @purchase.save
      @bike.update(status: 'sold')
      redirect_to bike_purchase_path(@bike, @purchase.buyer_id), notice: 'Purchase was successfully created.'
    else
      render 'bikes/show', alert: "You are not logged in"
    end
  end

  def show
    @bike = Bike.find(params[:id])
  end

  private

  def purchase_params
    params.require(:purchase).permit(:bike_id, :seller_id)
  end
end
