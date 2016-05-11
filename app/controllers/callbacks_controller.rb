class CallbacksController < ApplicationController

  def twitter
    #we made up the find or creat bit and then added request.env
    user = User.find_or_create_with_twitter request.env['omniauth.auth']
    # we define our user id as we do elsewhere in our app
    session[:user_id] = user.id
    redirect_to root_path, notice: "Thanks for signing in with Twitter"
    #render json: request.env['omniauth.auth']

  end
end
