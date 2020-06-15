class FridgesController < ApplicationController
    def index
        frideges = Fridge.all
        render json: frideges.to_json()
    end
    
    def show
        fridge = Fridge.find_by(id: params[:id])
        render json: FridgeSerializer.new(fridge)
    end

    def create
        fridge = Fridge.create(fridge_params)
        render json: FridgeSerializer.new(fridge)
    end

    def edit
        fridge = Fridge.update(fridge_params)
        render json: FridgeSerializer.new(fridge)
    end

    def delete
        fridge = Fridge.find(params[:id])
        fridge.destroy
    end

    private
    def fridge_params
        params.require(:fridge).permit(:url, :name)
    end
end
