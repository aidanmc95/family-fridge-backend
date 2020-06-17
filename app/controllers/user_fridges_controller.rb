class UserFridgesController < ApplicationController
    def create
        user_fridge = UserFridge.create(user_fridge_params)
        render json: user_fridge.to_json()
    end

    def destroy
        user_fridge = UserFridge.find(params[:id])
        user_fridge.destroy
        render json: {info: "Deleted"}
    end

    private
    def user_fridge_params
        params.require(:user_fridge).permit(:user_id, :fridge_id)
    end
end
