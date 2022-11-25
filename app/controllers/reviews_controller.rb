class ReviewsController < ApplicationController
  def new
    @pokemon = Pokemon.find(params[:pokemon_id])
    @review = Review.new
  end

  def create
    @pokemon = Pokemon.find(params[:pokemon_id])
    @review = Review.new(review_params)
    @review.pokemon = @pokemon

    if @review.save
      redirect_to pokemon_path(@pokemon)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy

    redirect_to pokemon_path(@review.pokemon)
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
