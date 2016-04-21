class TopicsController < ApplicationController

before_action :set_forum
before_action :set_topic, only: [:show, :edit, :update, :destroy]

  def new
    @topic = @forum.topics.build
    @topic.posts.build
  end


  def create
    @topic = @forum.topics.build(topic_params)

    if @topic.save
      flash[:notice] = "Topic has been created."
      redirect_to [@forum, @topic]
    else
    flash.now[:alert] = "Topic has not been created."
    render "new"
    end
  end

  def show
  end

  def edit
  end

  def update
    if @topic.update(topic_params)
      flash[:notice] = "Topic has been updated."
      redirect_to [@forum ,@topic]
    else
      flash.now[:alert] = "Topic has not been updated."
      render "edit"
    end
  end




  private
  def set_forum
    @forum = Forum.find(params[:forum_id])
  end

  def set_topic
    @topic = @forum.topics.find(params[:id])
  end

  def topic_params
    params.require(:topic).permit(:subject, posts_attributes: [:text])

  end
end
