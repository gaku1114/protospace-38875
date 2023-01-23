class CommentsController < ApplicationController
  def create
    @prototype = Prototype.find(params[:prototype_id])
    if Comment.create(comment_params)
      redirect_to  prototype_path(params[:prototype_id])
    else
      render prototype_path(params[:prototype_id])
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:content).merge(user_id: current_user.id).merge(prototype_id: params[:prototype_id])
  end
end
