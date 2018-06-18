class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name] != nil && !params[:name].empty?
      session[:name] = params[:name]
      redirect_to '/'
    else
      redirect_to login_path
    end
  end

  def destroy
    session[:name].nil? || session[:name].empty? ? nil : session.delete(:name)
    redirect_to '/'
  end
end
