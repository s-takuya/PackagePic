class PostingsController < ApplicationController
  def index
    @postings = Posting.recent
  end

  def new
    @posting = Posting.new
  end

  def create
    @posting = Posting.new(posting_params)
    if @posting.save
      redirect_to root_path
    else
      render new
    end
  end

  def posting_params
    params.require(:posting).permit(:body, :category, photo_attributes: :image)
  end
end
