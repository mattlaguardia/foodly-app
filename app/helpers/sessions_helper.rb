module SessionsHelper

  def login(user)
    session[:user_id] = user.id
    @current_user = user
    redirect_to "/users/#{user.id}"
  end

  def logged_in?
    if current_user == nil
      redirect_to "/login"
    else
      redirect_to "/users/#{current_user.id}"
    end
  end

  def logout
    @current_user = session[:user_id] = nil
    redirect_to "/home"
  end

end
