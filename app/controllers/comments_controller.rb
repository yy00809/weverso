# Returning response to requests from comments view
class CommentsController < ApplicationController

  def create
    @event = Event.find(params[:event_id])
    @comment = @event.comments.create(comment_params)
    redirect_to event_path(@event)
  end

  def destroy
    @event = Event.find(params[:event_id])
    @comment = @event.comments.find(params[:id])
    @comment.destroy
    redirect_to event_path(@event)
  end

  private def comment_params
      params.require(:comment).permit(:username, :content)

  end
end
