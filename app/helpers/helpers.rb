class Helpers

    def current_user(session)
        #use the user_id from the session hash to find the user in the database and return that user.
        @user = User.find_by_id(session[:user_id])
    end
    
    def is_logged_in?(session)
        #return true if the user_id is in the session hash and false if not.
        !!session[:user_id]
    end


end