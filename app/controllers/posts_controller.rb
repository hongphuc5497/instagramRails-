class PostsController < ApplicationController
    before_action :find_post, only: [:show]
    def show; end

    def create
        Post.create(post_params)
        redirect_to root_path
    end
      
    def destroy
        @post = current_user.posts.find(params[:id])
        @post.destroy

        redirect_to user_path(current_user)
    end

    private
    
    def find_post
        @post = Post.find(params[:id])
    end

    def post_params
        params.require(:post).permit(:description, :image, :user_id)
    end

end
