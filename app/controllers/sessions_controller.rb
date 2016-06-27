class SessionsController < ApplicationController
  include SessionsHelper

  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to user
    else
      redirect_to "/login", flash: { error: "There was a problem logging you in."}
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

end
