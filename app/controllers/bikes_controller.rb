class BikesController < ApplicationController
  before_action :authenticate_user!
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @bikes = Bike.all
    if params[:query].present?
      sql_subquery = <<~SQL
      model ILIKE :query
      OR CAST(year AS TEXT) ILIKE :query
      OR (CAST(kilometers as TEXT) || ' km') ILIKE :query
      OR description ILIKE :query
      OR category ILIKE :query
      OR CAST(price AS TEXT) ILIKE :query
      SQL
      @bikes = @bikes.where(sql_subquery, query: "%#{params[:query]}%")
    
    end
  end
  def show
    @bike = Bike.find(params[:id])
    @purchase = Purchase.new
  end

  def new
    @bike = Bike.new
  end

  def create
    @user = current_user
    @bike = Bike.new(bike_params)
    @bike.user_id = @user.id
    if @bike.save
      redirect_to bikes_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @bike = Bike.find(params[:id])
    @bike.update(bike_sold_params)
    redirect_to bikes_path
  end

  private
  def bike_params
    params.require(:bike).permit(:model, :year, :description, :kilometers, :price, :category, :photo)
  end

  def bike_sold_params
    params.require(:bike).permit(:status)
  end
end
