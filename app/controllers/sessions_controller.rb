class SessionsController < ApplicationController

    def new
        @user = User.new
    end

    def create
        # binding.pry
        user = User.find_by(username: params[:username], password:[:password])
        if user && user.authenticate(params[:username][:password])
            session[:user_id] = user.id
            redirect_to user_path(user)
        else 
            flash[:message] = "Sorry, login info is incorrect. Please try again."
        end 
    end 

    def destroy
        session.clear
        redirect_to root_path
    end

end