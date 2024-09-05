class PagesController < ApplicationController

  def show
    @bikes = current_user.bikes
    @purchases = current_user.purchases
    bikes_owned = Purchase.where(buyer_id: current_user.id)
    @bikes_purchased = Bike.where(id: bikes_owned.pluck(:bike_id))
  end
end
