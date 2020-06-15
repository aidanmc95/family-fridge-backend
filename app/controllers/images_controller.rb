class ImagesController < ApplicationController
    def show
        image = Image.find(params[:id])
        render json: ImageSerializer.new(image)
    end

    def create
        image = Image.create(image_params)
        render json: ImageSerializer.new(image)
    end

    def delete
        image = Image.find(params[:id])
        image.destroy
    end

    private

    def image_params
        params.require(:image).permit(:user_id, :fridge_id, :url, :description, :image_type)
    end
end
