class ApplicationController < ActionController::Base
  protect_from_forgery

private
  def current_human
    @current_human ||= Human.find(session[:human_id]) if session[:human_id]
  end
  helper_method :current_human
end
