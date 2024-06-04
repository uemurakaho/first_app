class PostsController < ApplicationController
  def index 
    @posts = Post.all
  end

  def new #入力フォームを表示させるだけなので処理の記述なし
  end

  def create
    Post.create(content: params[:content])
    redirect_to "/posts"
  end

end
