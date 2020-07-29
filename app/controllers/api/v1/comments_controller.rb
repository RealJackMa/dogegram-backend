class Api::V1::CommentsController < ApplicationController

    def index 
        comments = Comment.all 
        render json: comments, only: [:id, :content, :image_id]
    end

    def show 
        comment = Comment.find(params[:id])
        options = {include: [:course]}
        render json: comment, only: [:id, :content, :image_id]
    end

    def create 
        comment = Comment.create(comment_params)
        render json: comment, only: [:id, :content, :image_id]
    end

    def update 
        comment = Comment.find(params[:id])
        comment.update(comment_params)
        render json: comment, only: [:id, :content, :image_id]
    end

    def destroy 
        comment = Comment.find(params[:id])
        comment.destroy 
        render json: "Comment Deleted Successfully"
    end


    private 

    def comment_params
        params.require(:comment).permit(:content, :image_id)
    end 

end
