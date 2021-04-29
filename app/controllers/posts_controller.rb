class PostsController < ApplicationController
  def index
    @posts = Post.all.order(date: :asc)
  end

  def show
    @post = Post.find_by(id: params[:id])
  end

  def edit
    @post = Post.find_by(id: params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(title: params[:title], date: params[:date], content: params[:content])
    if @post.save
      flash[:notice] = "新規作成しました"
      redirect_to("/posts/index")
    else
      render("posts/new")
    end
  end

  def update
    @post = Post.find_by(id: params[:id])
    @post.content = params[:content]
    @post.date = params[:date]
    if @post.save
      flash[:notice] = "更新しました"
      redirect_to("/posts/index")
    else
      render("posts/edit")
    end
  end

  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
    flash[:notice] = "削除しました"
    redirect_to("/posts/index")
  end

end
