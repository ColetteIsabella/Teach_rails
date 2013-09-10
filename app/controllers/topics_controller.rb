class TopicsController < ApplicationController
before_filter :find_topic, only: [:show, :edit, :update, :destroy]
  def index
    @topics = Topic.all
  end

  def new
    @topic = Topic.new
  end

  def create
    @topic = Topic.new(topic_params)
    if @topic.save
      flash[:notice] = "Topic has been saved."
      redirect_to root_url
    else
      flash[:notice] = "This topic can not be created"
      render action: "new"
    end
  end

  def show
  end

  def edit
  end

  def update
    if @topic.update(topic_params)
      flash[:notice] = "This topic has been updated."
      redirect_to root_url
    else
      flash[:notice] = "This topic cannot be updated."
      redirect_to root_url
    end
  end

  def destroy
    @topic.destroy
    flash[:notice] = "Topic has been deleted."
    redirect_to topics_path
  end


private

def find_topic
  @topic = Topic.for(current_user).find(params[:id])
  end

  def topic_params
    params.require(:topic).permit(:questions)
  end
end

