class PostsController < ApplicationController
    # Command line: rails g controller Posts
    # The controller techinically defines Actions. 
    # These actions define pages to grant access to or additional functions that does not necessarily require defining a page

    def index
        @posts = Post.all.order("created_at DESC") # displays at descending order based on its creation date
    end

    def show
    
    end
    
    def new
        @post = Post.new # Creates a new Post object (Based on the model i.e. title and body)
    end

    def create
        @post = Post.new(post_params) # Creates new post based on the parameters
        if @post.save
            redirect_to posts_path, notice: "You created a Post!"
        else
            render :new, alert: "Your post wasn't created"
        end
    end

    #protects your data
    private
    # adds parameters that you require in the form
    def post_params
        params.require(:post).permit(:title, :body)
    end

end
