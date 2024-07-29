class ReviewsController < ApplicationController
    before_action :set_stylist
  
    def create
      @review = @stylist.reviews.new(review_params)
      @review.user = current_user
  
      if @review.save
        redirect_to @stylist, notice: 'Review was successfully created.'
      else
        render 'stylist/show'
      end
    end
  
    private
  
    def set_stylist
      @stylist = Stylist.find(params[:stylist_id])
    end
  
    def review_params
      params.require(:review).permit(:content, :rating)
    end
  end
  