class Api::V1::ObjectivesController < ApplicationController
    
   def index
        @objective =Objective.all
        render json: @objective
    end


    def create
        @objective =Objective.new(objective_params)
        if @objective.save
            render json: @objective
        else
            render json: {error: "Unable to create this objective"}, status: 400
        end
    end

    def show
        @objective =Objective.find_by(id: params[:id])
        if @objective
            render json: @objective
        else
            render json: {error: "Objective was not found"}, status: 404
        end
    end

    def destroy
        @objective =Objective.find_by(id: params[:id])
        @objective.delete
        render json: @objective
    end

    private

    def objective_params
        params.require(:objective).permit(:id, :user_id, :user, :rent, :food, :utilities, :clothes, :travel, :other)
    end



end
