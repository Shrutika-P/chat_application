# frozen_string_literal: true

# controller
class SessionsController < ApplicationController
  def new
    puts 'you are on index page'
  end

  def create
    # byebug
    # puts 'you are on index page'
    user = User.find_by(username: params[:session][:username])
    if user&.authenticate(params[:session][:password])
      session[:user_id] = user.id
      flash[:success] = 'You have successfully logged in'
      redirect_to root_path
    else
      flash.now[:error] = 'There is something wrong with provided info'
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = 'You have successfully logged out'
    redirect_to login_path
  end
end
