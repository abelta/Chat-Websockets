module UsersHelper


  def current_user
    if session[:current_user]
      User.new session[:current_user]
    else
      user = User.new
      session[:current_user] = user.to_json
      user
    end
  end


end