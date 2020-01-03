class UsersController < ActionController::API
    def index
        users = User.all 
        render json: UserSerializer.new(users)
    end 

    def show
    
        user = User.find_by(username: params[:id])
        render json: UserSerializer.new(user)

    end 

    def create 
        user = User.create(user_params)
        render json: user
    end 

    private 
    
    def user_params
        params.require(:user).permit(:name, :username)
    end 
end