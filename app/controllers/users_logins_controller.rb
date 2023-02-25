class UsersLoginsController < ApplicationController
    def new_login
        user = User.find_by(username: params[:username])
    end
  
    def create_login
    user = User.find_by(username: params[:username]) 
        if user && user.authenticate(params[:password])
          session[:user_id] = user.id
          flash[:notice] = "Login successful."
          redirect_to user_path(user.id)
        else
          flash[:notice] = "Login failed."
          render :new, status: :unprocessable_entity
        end 
    end

    def show
        @user = User.find(params[:id])
    end
  
    def destroy
        session[:user_id] = nil
        flash[:notice] = "Logout successful."
        redirect_to login_path
    end
          
    private
    def user_params
        params.require(:user).permit(:username, :email, :password)
    end
end
