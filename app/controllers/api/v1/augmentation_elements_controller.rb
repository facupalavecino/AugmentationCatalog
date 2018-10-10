class Api::V1::AugmentationElementsController < ActionController::API
	def create
		
	end
	def augmentation_params
		params.require(:url).permit(:urlCompareType, :template, :h0x, :h0p, :h1x, :h1p, :h2x, :h2p, 
			:n0x, :n0p,
			:m0x, :m0p, :m1x, :m1p, :m2x, :m2p,
			:f0x, :f0p, :f1x, :f1p, :f2x, :f2p, :augmentation_id)
	end
end