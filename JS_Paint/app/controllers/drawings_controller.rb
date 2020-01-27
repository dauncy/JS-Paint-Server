class DrawingsController < ActionController::API
   
    def index
       drawings = Drawing.all 
       
       render json: drawings, :include => [:challenge, :user] 
    end 

    def show 
        drawing = Drawing.find(params[:id])
        challenge = drawing.challenge
        likes= drawing.likes
        user = drawing.user
       render json: drawing, :include => [:challenge, :likes, :user]
    end 
   

    def create
       drawing = Drawing.create(drawing_params) 
       
       
       
       

       render json: drawing, :include => [:challenge, :likes]
    end 

    def destroy
        @drawing = Drawing.find(params[:id])
        @drawing.destroy
     
    end 

    private
    def drawing_params
        params.require(:drawing).permit(:user_id, :challenge_id, :canvas_url)
    end 
end