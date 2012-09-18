class Github < Controller
  map "/auth/github/"

  def callback
    auth = request.env['omniauth.auth']

    user_login([auth[:uid], session])

    session[:github] = auth
    redirect MainController.r(:index)
  end

end
