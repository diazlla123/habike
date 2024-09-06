class ReviewsController < ApplicationController
  def index
    # raise
    @bike = Bike.find(params[:bike_id])

    @reviews = Review.where(seller_id: @bike.user_id ) #se cambio para que muestre todo
    @bike.reviews

  end

  def create


    @review = Review.new(review_params)
    @bike = Bike.find(@review.bike_id)

    @review.buyer_id = current_user.id

    if @review.save
      redirect_to bike_reviews_path(@bike), notice: 'Review successfully added.'
    else
      @reviews = @bike.reviews
      render :index
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment, :buyer_id, :seller_id, :bike_id)
  end

end
