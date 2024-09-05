class PagesController < ApplicationController

  def show
    @bikes = current_user.bikes
    @purchases = current_user.purchases

    bikes_owned = Purchase.where(buyer_id: current_user.id)
    @bikes_purchased = Bike.where(id: bikes_owned.pluck(:bike_id))
  end

  def destroy
    @purchase = Purchase.find(params[:id])  # Find the purchase by its ID
    @purchase.destroy  # Destroy the purchase record
    redirect_to page_path(current_user.id), notice: "Purchase was successfully deleted."
  end
end
