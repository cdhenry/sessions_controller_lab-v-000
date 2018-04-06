class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name] == "" || params[:name] == nil
      redirect_to '/new'
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    raise params.inspect
    session.delete :name
  end
end
