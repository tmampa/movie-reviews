class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.user.id = current_user.id
    if @review.save
      redirect_to reviews_path '/reviews#index'
    else
      render 'new'
    end
  end

  private

  def review_params 
    params.require(:review).permit(:body)
  end
end
