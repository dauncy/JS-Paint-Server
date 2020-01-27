class ChallengesController < ActionController::API

    def index
        challenges = Challenge.all 
        render json: ChallengeSerializer.new(challenges)
    end 

    def show 
        challenge = Challenge.find(params[:id])
        render json: ChallengeSerializer.new(challenge)
    end 
    
end