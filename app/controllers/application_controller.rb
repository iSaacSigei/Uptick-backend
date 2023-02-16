class ApplicationController < ActionController::API
    include ActionController::Cookies
    include AbstractController::Helpers

    helper_method :current_user
  
    private
  
    def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end
end
