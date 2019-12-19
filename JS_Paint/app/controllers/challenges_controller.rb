class ChallengesController < ActionController::API

    def index
        challenges = Challenge.all 
        render json: challenges
    end 
    
end