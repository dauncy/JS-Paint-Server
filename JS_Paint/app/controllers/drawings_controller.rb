class DrawingsController < ActionController::API
   
    def index
       drawings = Drawing.all 
       render json: DrawingSerializer.new(drawings)
    end 

    def show 
        drawing = Drawing.find(params[:id])
        render json: DrawingSerializer.new(drawing)
    end 
   

    def create
       drawing = Drawing.new(drawing_params) 
       
       
       drawing.save
       

       render json: DrawingSerializer.new(drawing)
       
    end 

    private
    def drawing_params
        params.require(:drawing).permit(:user_id, :challenge_id, :canvas_url)
    end 
end