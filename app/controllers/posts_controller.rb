class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      flash[:notice] = "投稿を編集しました."
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def index
    @posts = Post.all
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.member_id = current_member.id
    if @post.save
      flash[:notice] = "レビューが投稿されました."
      redirect_to post_path(@post.id)
    else
      @posts = Post.all
      render :index
    end
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(:store, :title, :star, :body)
  end

end
