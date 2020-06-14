class ImagesController < ApplicationController
    def index
        images = Image.all
        render json: images.to_json()
    end

    def show
        image = Image.find(params[:id])
        render json: ImageSerializer.new(image)
    end
end
