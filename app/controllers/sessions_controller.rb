class SessionsController < ApplicationController
  def create
  	session[:current_user_id] = params[:user_id]
  	user = User.find(params[:user_id])
  	flash[:notice] = "You've been logged in as #{user.name}"
  	redirect_to root_url
  end

  def destroy
  	session[:current_user_id] = nil
  	flash[:notice] = "You've been logged out"
  	redirect_to root_url
  end
end
