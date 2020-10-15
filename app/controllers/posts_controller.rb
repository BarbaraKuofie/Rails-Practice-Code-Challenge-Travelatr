class PostsController < ApplicationController

    def index
         @posts = Post.all
    end

     def new 
        @post = Post.new
     end 

     def create 
        @post = Post.new(post_params)
        if @post.save 
            redirect_to post_path(@post)
        else 
            render :new 
        end 
     end 

     def show
        @post = Post.find(params[:id])
    end

    private

    # def update_like
    #     @post.update_attribute :like, params[:count] + 1
    # end


     def post_params 
        params.permit(:title, :content, :likes, :blogger_id, :destination_id)
     end 
 
 end