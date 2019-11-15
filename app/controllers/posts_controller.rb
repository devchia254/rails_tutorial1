class PostsController < ApplicationController

    def index
    end
    
    def new
        @post = Post.new
    end

    def create
        @post = Post.new(post_params)
        if @post.save
            redirect_to posts_path, notice: "You created a Post!"
        else
            render :new, alert: "Your post wasn't created"
        end
    end

    private

    def post_params
        params.require(:post).permit(:title, :body)
    end

end
