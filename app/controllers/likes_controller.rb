class LikesController < ActionController::API
    def index
         likes = Like.all 
         render json: LikeSerializer.new(likes)
     end 
 
     def show 
         like = Like.find(params[:id])
         render json: LikeSerializer.new(like)
     end 
    
 
     def create
        like= Like.create(like_params) 
        render json: like
     end 

     def destroy
        like = Like.find(params[:id])
        like.destroy
        render json: like
     end 
 
     private
     def like_params
         params.require(:like).permit(:user_id, :drawing_id)
     end 
end