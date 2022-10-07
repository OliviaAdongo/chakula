class Chakula < ApplicationRecord
    def index
        chakulas = Chakula.all 
        render json: chakulas
    end
end
