class ChakulasController < ApplicationController
    def index
        chakulas = Chakula.all 
        render json: chakulas
    end
    
    def show
        chakula = Chakula.find_by(id: params[:id])
        if chakula
            render json: chakula
        else
            render json: {error: 'not found'}, status: :not_found
        end
    end

    def create
        chakulas = Chakula.create(food_params)
        render json: chakulas, status: :created 
    end

    def update
        chakula = Chakula.find_by(id: params[:id])
        if chakula
            chakula.update(food_params) 
            render json: chakula
        else
            render jsoon: {error: "food not found"}, status: :not_found
        end
    end
        def destroy
            chakula = Chakula.find_by(id: params[:id])
            if chakula
                chakula.destroy
                head :no_content
            else
                render json: {error: "Chakula not found"}, status: :not_found
            end
        end
    private

    def food_params
        params.permit(:name, :side)
    end
end
