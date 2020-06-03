class SessionsController < ApplicationController
  def new

  end

  def create
    session[:name] = params[:name]
    if session[:name]
      redirect_to '/'
    else
      render "new"
    end
  end

  def destroy
    session.delete :name
  end

end
