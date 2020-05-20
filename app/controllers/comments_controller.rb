class CommentsController < ApplicationController
  def create
    @comment = Comment.new(
      user_id: @current_user.id,
      post_id: params[:id],
      content: params[:content]
    )
    if @comment.save
      flash[:notice] = "コメントしました"
      redirect_to("/posts/#{params[:id]}")
    end
  end

  def destroy
    @comment = Comment.find_by(id: params[:id])
    @comment.destroy
    flash[:notice] = "コメントを削除しました"
    redirect_to("/posts/#{@comment.post_id}")
  end

end
