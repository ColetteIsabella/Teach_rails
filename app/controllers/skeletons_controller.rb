class SkeletonsController < ApplicationController
before_action :user_logged_in!
  def index
    @skeletons = Skeleton.all
  end

  def new
    @skeleton = Skeleton.new
  end

  def create
    @skeleton = Skeleton.new(skeleton_params)
    if @skeleton.save
      flash[:notice] = "Question has been saved."
      redirect_to skeleton_url
    else
      flash[:notice] = "Question cannot be created."
      render "new"
    end
  end

  def show
  end

  def destroy
  end
private


  def skeleton_params
    params.require(:skeleton).permit(:question, :answer)
  end
end
