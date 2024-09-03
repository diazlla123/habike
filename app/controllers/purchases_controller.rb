class PurchasesController < ApplicationController
  def create
    @purchase = Purchase.new(purchase_params)
    @purchase.user = current_user

    if @purchase.save
      redirect_to bikes_path, notice: 'Purchase was successfully created.'
    else
      render 'bikes/show' #podemos cambiarlo#
    end
  end

  private

  def purchase_params
    params.require(:purchase).permit(:bike_id)
  end
end
