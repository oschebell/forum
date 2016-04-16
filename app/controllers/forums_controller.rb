class ForumsController < ApplicationController

  def index
  end

  def new
    @forum = Forum.new
  end

  def create
    @forum = Forum.new(forum_params)

    if @forum.save
      flash[:notice] = "Forum has been created!"
      redirect_to @forum
    else
      flash.now[:alert] = "Forum has not been created."
      render "new"
    end
  end

  def show
    @forum = Forum.find(params[:id])
  end


private

  def forum_params
    params.require(:forum).permit(:title, :description)
  end

end
