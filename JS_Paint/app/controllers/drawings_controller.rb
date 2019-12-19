class DrawingsController < ActionController::API
    def index
        drawings = Drawing.all 
        render json: drawings
    end 

    def create
       drawing = Drawing.create(drawing_params) 
       render json: drawing
    end 

    private
    def drawing_params
        params.require(:drawing).permit(:user_id, :challenge_id, :canvas_url)
    end 
end