class UsersController < ActionController::API
    def index
        users = User.all 
        options = {
            include: [:drawings, :chalenges]
            }
        render json: UserSerializer.new(users, options)
    end 

    def show
    
        user = User.find_by(username: params[:id])
        options = {
            include: [:drawings, :challenges]
            }
        render json: UserSerializer.new(user, options)

    end 

    def create 
        user = User.create(user_params)
        render json: user
    end 

    private 
    
    def user_params
        params.require(:user).permit(:name, :username, drawing_attributes: [:id, :_destroy, challenges_attributes: %i[:img_src]])
    end 
end