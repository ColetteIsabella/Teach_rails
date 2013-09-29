class SkeletonsController < ApplicationController
before_action :user_logged_in!, only: [:edit, :create, :update, :destroy]
  def index
    @skeletons = Skeleton.all
  end

  def edit
    @skeleton = Skeleton.find(params[:id])
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

  def update
    @skeleton = Skeleton.find(params[:id])
    if @skeleton.update(skeleton_params)
      flash[:notice] = "This has been updated."
      redirect_to skeleton_url
    else
      flash[:notice] = "This cannot be updated at this time."
      render "edit"
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
