class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name].empty?
      render :new
    elsif params[:name].empty?
      render :new
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    session.delete :username
  end
end
