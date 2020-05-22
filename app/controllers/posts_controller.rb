class PostsController < ApplicationController
  before_action :authenticate_user
  before_action :ensure_correct_user, {only: [:edit, :update, :destroy]}

  def index
    @posts = Post.all.order(created_at: :desc).page(params[:page]).per(6)
  end

  def show
    @post = Post.find_by(id: params[:id])
    @user = User.find_by(id: @post.user_id)
    @likes_count = Like.where(post_id: @post.id).count
    @comments_count = Comment.where(post_id: @post.id).count
    @comment = Comment.new
    @comments = Comment.where(post_id: params[:id]).order(created_at: :desc).page(params[:page]).per(3)
  end

  def new
    @post = Post.new
  end

  def retweetnew
    @post = Post.new
    @retweet = Post.find_by(id: params[:id])
    @retweetUser = User.find_by(id: @retweet.user_id)
  end

  def create
    @post = Post.new(
      content: params[:content],
      user_id: @current_user.id
    )
    if @post.save
      flash[:notice] = "投稿しました"
      redirect_to("/posts/index")
    else
      render("posts/new")
    end
  end

  def edit
    @post = Post.find_by(id: params[:id])
  end

  def update
    @post = Post.find_by(id: params[:id])
    @post.content = params[:content]
    if @post.save
      flash[:notice] = "編集しました"
      redirect_to("/posts/index")
    else
      render("posts/edit")
    end
  end

  def destroy
    @post = Post.find_by(id: params[:id])
    @likes = Like.where(post_id: @post.id)
    @comments = Comment.where(post_id: @post.id)
    if @likes
      @likes.destroy_all
    end
    if @comments
      @comments.destroy_all
    end
    @post.destroy
    flash[:notice] = "削除しました"
    redirect_to("/posts/index")
  end

  def ensure_correct_user
    @post = Post.find_by(id: params[:id])
    if @post.user_id != @current_user.id
      flash[:notice] = "権限がありません"
      redirect_to("/posts/index")
    end
  end
end
