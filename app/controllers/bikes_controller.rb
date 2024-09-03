class BikesController < ApplicationController
  before_action :authenticate_user!
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @bikes = Bike.all
  end

  def show
    @bike = Bike.find(params[:id])
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

  private
  def bike_params
    params.require(:bike).permit(:model, :year, :description, :kilometers, :price, :category, :photo)
  end
end
