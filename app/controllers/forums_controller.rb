class ForumsController < ApplicationController

  def index
    @forums = Forum.all
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

  def edit
    @forum = Forum.find(params[:id])
  end

  def update
      @forum = Forum.find(params[:id])
        if @forum.update(forum_params)
          flash[:notice] = "Forum has been updated."
          redirect_to @forum
        else
          flash.now[:alert] = "Forum has not been updated."
          render "edit"
        end
  end

  def destroy
    @forum = Forum.find(params[:id])
    @forum.destroy

    flash[:notice] = "Forum has been deleted."
    redirect_to forums_path
  end

private

  def forum_params
    params.require(:forum).permit(:title, :description)
  end

end
