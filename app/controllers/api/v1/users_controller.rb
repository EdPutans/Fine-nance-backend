class Api::V1::UsersController < ApplicationController

    def index
        @users = User.all
        render json: @users
    end


    def create
        @user = User.new(user_params)
        if @user.save
            render json: @user
        else
            render json: {error: "Unable to create this user"}, status: 400
        end
    end

    def show
        @user = User.find_by(id: params[:id])
        if @user
            render json: @user
        else
            render json: {error: "User was not found"}, status: 404
        end
    end

    def update
        @user = User.find_by(id: params[:id])
        @user.update(user_params)
        if @user.update
            render json: @user
        else
            render json: {error: "Unable to create this user"}, status: 400
        end
    end



    private



    def user_params
        params.require(:user).permit(:name, :email, :password, :rent, :clothes, :food, :other, :utilities, :travel)
    end




end
