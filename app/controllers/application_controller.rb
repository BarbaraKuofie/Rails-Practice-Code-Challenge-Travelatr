class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :click, only: :index
   def index
      @clicks = Click.sum
   end

   private

   def click
      Click.create
   end
end
