class FridgesController < ApplicationController
    def index
        frideges = Fridge.all
        render json: frideges.to_json()
    end
    
    def show
        fridge = Fridge.find_by(id: params[:id])
        render json: FridgeSerializer.new(fridge)
    end
end
