# frozen_string_literal: true

# controller
class SessionsController < ApplicationController
  before_action :logged_in_rederect, only: %i[new create]

  def new; end

  def create
    # byebug
    # puts 'you are on index page'
    user = User.find_by(username: params[:session][:username])
    if user&.authenticate(params[:session][:password])
      session[:user_id] = user.id
      flash[:success] = 'You have successfully logged in'
      redirect_to root_path
    else
      flash.now[:error] = 'Username or password is wrong'
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = 'You have successfully logged out'
    redirect_to login_path
  end

  private

  def logged_in_rederect
    if logged_in?
      flash.now[:error] = 'You are already logged in'
      redirect_to root_path
    end
  end
end
