class RegistrationsController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to root_path, notice: "Successfully Created User Account"
        else
            render :new
        end
    end
    private
    def user_params
        params.require(:user).permit(:FirstName, :LastName, :DateofBirth, :SocialSecurityNumber, :email, :password, :password_confirmation)
    end

end
