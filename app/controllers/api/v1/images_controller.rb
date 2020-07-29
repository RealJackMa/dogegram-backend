class Api::V1::ImagesController < ApplicationController

    def index 
        images = Image.all 
        render json: images, only: [:id, :title, :likes, :url], include: :comments
    end

    def show 
        image = Image.find(params[:id])
        options = {include: [:course]}
        render json: image, only: [:id, :title, :likes, :url], include: :comments
    end

    def create 
        image = Image.create(image_params)
        render json: image, only: [:id, :title, :likes, :url], include: :comments
    end

    def update 
        image = Image.find(params[:id])
        image.update(image_params)
        render json: image, only: [:id, :title, :likes, :url], include: :comments
    end

    def destroy 
        image = Image.find(params[:id])
        image.destroy 
        render json: "Image Deleted Successfully"
    end

    private 

    def image_params
        params.require(:image).permit(:title, :likes, :url)
    end 

end
