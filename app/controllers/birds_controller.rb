class BirdsController < ApplicationController
    def index
        render json: Bird.all, except: [:created_at, :updated_at]
    end

    def show
        birds = Bird.find_by(id: params[:id])
        
        if birds
            render json: birds
        else
            render json: {error:"results not found"},status: 404
        end
    end
end
