class SessionsController < ApplicationController
  def create
    human = human.from_omniauth(env["omniauth.auth"])
    session[:human_id] = human.id
    redirect_to root_url
  end

  def destroy
    session[:human_id] = nil
    redirect_to root_url
  end

end
