class TopicsController < ApplicationController
before_filter :find_topic, only: [:show, :edit, :update, :destroy]
  def index
    @topics = Topic.all
  end

  def new
    @topic = Topic.new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
    @topic.destroy
    flash[:notice] = "Topic has been deleted."
    redirect_to topics_path
  end


private
def find_topic
  rescue ActiveRecord::RecordNotFound
    flash[:alert] = "The Topic you were looking for could not be found."
    redirect_to topics_path
  end
end

