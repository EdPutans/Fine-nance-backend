class Api::V1::FollowsController < ApplicationController

    def index
      @follows = Follow.all
      render json: @follows
    end

    def create
        @follow = Follow.new(follow_params)
        if @follow.save
            render json: @follow
        else
            render json: {error: "Unable to create this follow"}, status: 400
        end
    end

    def show
        @follow = Follow.find_by(id: params[:id])
        if @follow
            render json: @follow
        else
            render json: {error: "follow was not found"}, status: 404
        end
    end

     def destroy
        @follow =Follow.find_by(id: params[:id])
        @follow.delete
        render json: @follows
     end


    private

    def follow_params
        params.require(:follow).permit(:id, :follower_id, :followee_id)
    end


end
