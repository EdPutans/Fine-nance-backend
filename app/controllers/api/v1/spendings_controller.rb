class Api::V1::SpendingsController < ApplicationController
 
    

    def index
        @spendings = Spending.all
        render json: @spendings
    end


    def create
        @spending = Spending.new(spending_params)
        if @spending.save
            render json: @spending
        else
            render json: {error: "Unable to create this Spending"}, status: 400
        end
    end

    def show
        @spending = Spending.find_by(id: params[:id])
        if @spending
            render json: @spending
        else
            render json: {error: "Spending was not found"}, status: 404
        end
    end

  
    private

    def spending_params
        params.require(:spending).permit(:id, :user_id, :user, :rent, :food, :utilities, :clothes, :travel, :other)
    end






end
