class PagesController < ApplicationController

  def show
    @bikes = current_user.bikes
    @purchases = current_user.purchases
  end
end
