class UsersController < ApplicationController
    def new_signup
      @user = User.new
    end

    def create_signup
      @user = User.new(user_params)
      if @user.save
        flash[:notice] = "Account created successfully"
        session[:current_user] = @user.id
        redirect_to user_path(@user[:id])
      else
        flash[:notice] = "Signup failed."
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