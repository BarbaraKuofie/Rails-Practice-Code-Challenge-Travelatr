class BloggersController < ApplicationController

    
    # def index
    #     @blogs = Blogger.all
    # end

    def new
        @blogger = Blogger.new
    end

    def create
        @blogger = Blogger.new(blogger_params)
        if @blogger.save
            redirect_to blogger_path(@blogger)
        else
            render :new
        end
    end

    private

    def blogger_params
        params.permit(:name, :bio, :age)
    end

end