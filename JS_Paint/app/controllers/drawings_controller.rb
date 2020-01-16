class DrawingsController < ActionController::API
   
    def index
       drawings = Drawing.all 
       options = {
        include: [:user, :challenge, :"challenges.img_src"]
        }
       render json: DrawingSerializer.new(drawings, options)
    end 

    def show 
        drawing = Drawing.find(params[:id])
        options = {
            include: [:user, :challenge, :"challenges.img_src"]
            }

        render json: DrawingSerializer.new(drawing, options)
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