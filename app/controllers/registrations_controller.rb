class RegistrationsController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            redirect to root_path, notice: "Successfully created account"
        else
            render :new
        end
    end
    private
    def user_params
        params.require(:user).permit(:FirstName, :LastName, :Dateofbirth, :SocialSecurityNumber, :email, :password, :password_confirmation)
    end

end
