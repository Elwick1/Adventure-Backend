class UsersController < ApplicationController

    def index
        @users = User.all 
        render json: @users 
    end

    # def new
    #     @users = User.new
    #     render :json @users
    # end

    # def create
    #     @user = User.new(strong_params)
    #     if @user.valid?
    #         @user.save
    #         flash[:success] = "Welcome"
    #     else
    #         render :new
    #     end
    #     render :json @user
    # end

    def show
        @user = User.find(params[:id])
        render json: @user
    end

        private
      
            def strong_params
                params.require(:user).permit(:username, :password, :name)
            end


end
