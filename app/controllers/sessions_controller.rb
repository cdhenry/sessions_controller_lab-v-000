class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name].empty?
    elsif params[:name].empty?
    session[:name] = params[:name]
    redirect_to '/'
  end

  def destroy
    session.delete :username
  end
end
