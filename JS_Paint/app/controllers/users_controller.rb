class UsersController < ActionController::API
    def index
        users = User.all 
        
        render json: users

    end 

    def show
    
       user = User.find_by(username: params[:id])
       drawings = user.drawings
       challenges = drawings.map{|drawing| drawing.challenge }
       likes = drawings.map{|drawing| drawing.likes}
       

    #    byebug
       
        # options = {}
        # options[:include] = [:drawings, :'drawings.challenge.img_src']
        
        # render json: UserSerializer.new(user, options)
        
        render json: user, :include => [:drawings => {:include => [:challenge, :likes]}]
    end 

    def create 
        user = User.create(user_params)
        
        render json: user, :include => [:drawings => {:include => :challenge }]
        
    end 

    def update
        user = User.find_by(username: params[:id])
        user.update(user_params)
        render json: user, :include => [:drawings => {:include => :challenge }]
    end 

    def destroy 
        user = User.find_by(username: params[:id])
        
        
        user.drawings.destroy_all if user.drawings
        
         user.destroy
        render json: user
    end 

    private 
    
    def user_params
        params.require(:user).permit(:name, :username, drawing_attributes: [:id, :_destroy, challenges_attributes: %i[:img_src]])
    end 
end