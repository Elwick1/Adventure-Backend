class UserController < ApplicationController

    def index
        @user = User.all 
        render json: @user 
    end

    def new
        @user = User.new
        render :json @user
    end

    def create
        @user = User.new(strong_params)
        if @user.valid?
            @user.save
            flash[:success] = "Welcome"
        else
            render :new
        end
        render :json @user
    end

    def show
        @user = User.find(params[:id])
        render json: @user
    end

        private
      
            def strong_params
                params.require(:user).permit(:username, :password, :name)
            end


end
