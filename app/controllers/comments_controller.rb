class CommentsController < ApplicationController
    def index
        comments = Comment.all
        render json: comments.to_json()
    end
    
    def show
        comment = Comment.find_by(id: params[:id])
        render json: comment.to_json()
    end

    def create
        user = User.create(user_params)
        render json: user.to_json()
    end

    def edit
        user = User.find(params[:id])
        user.update(user_params)
    end

    def delete
        user = User.find(params[:id])
        user.destroy
    end

    private

    def comment_params
        params.require(:comment).permit(:user_id, :image_id, :comment)
    end
end
