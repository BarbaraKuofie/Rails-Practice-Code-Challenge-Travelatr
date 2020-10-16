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
    
    def add_like
        @post = Post.find(params[:id])
        @post.likes += 1
        @post.save
        redirect_to post_path(@post)
      end

     def post_params 
        params.permit(:title, :content, :likes, :blogger_id, :destination_id)
     end 
 
 end