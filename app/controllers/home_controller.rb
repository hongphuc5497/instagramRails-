class HomeController < ApplicationController
  def index
  end

  def index
    @posts = Post.order(created_at: :desc)
  end
end
