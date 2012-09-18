class MainController < Controller
  def index
    if !logged_in?
      @title = 'Welcome to Ramaze!'
      @image = "http://placekitten.com/80/80"
      @message = "Hello newcomer, please head <a href=\"/auth/github\">here</a> to log in"
    else
      @title = "Hi #{session[:github][:info][:nickname]}!"
      @image = session[:github][:info][:image] || "http://placekitten.com/80/80"
      @message = "Hi #{session[:github][:info][:name]}, this is visit ##{user.visits}"
    end
  end
end
