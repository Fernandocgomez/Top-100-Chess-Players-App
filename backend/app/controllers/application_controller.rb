class ApplicationController < ActionController::Base

    before_action :authenticated
     
    def current_user
        if session[:user_id]
            user = User.find(session[:user_id])
        end
    end

    def logged_in?
        !!current_user
    end

    def authenticated 
        redirect_to '/' unless logged_in?
    end

end
