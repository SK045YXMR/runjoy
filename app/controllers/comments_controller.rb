class CommentsController < ApplicationController
  def create
    @run = Run.find(params[:run_id])
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to run_path(@run.id)
    else
      @run = @comment.run
      @comments = @run.comments
      render 'runs/show'
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, run_id: params[:run_id])
  end
end
