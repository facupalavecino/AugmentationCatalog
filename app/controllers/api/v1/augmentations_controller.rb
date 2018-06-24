class Api::V1::AugmentationsController < ActionController::API
	def show
		augmentation = Augmentation.find(params[:id])
		render json: augmentation
	end
	def index
		augmentations = Augmentation.all
		render json: augmentations
	end
	def create
			@augmentation = Augmentation.new(augmentation_params)
			@augmentation.save
			redirect_to @augmentation
	end
	def update
	end
	def delete
	end
	def augmentation_params
		params.require(:json_augmentation).permit(:title, :description, :references, :conceptualModel, :configuration, :designDiagram, :screenshot)
	end
end