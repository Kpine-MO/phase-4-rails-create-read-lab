class PlantsController < ApplicationController

    def index
        plants = Plant.all
        render json: plants, only: [:id, :name, :image, :price]
      end
    
      def create
        plant = Plant.create(plants_params)
        render json: plant, only: [:id, :name, :image, :price], status: :created
      end
    
      def show
        plant = Plant.find_by( id: params[:id])
        render json: plant, only: [:id, :name, :image, :price]
      end
    
      private
    
      def plants_params
        params.permit(:name, :image, :price)
      end
end
