class Api::V1::AugmentationsController < ActionController::API

	#Devuelvo la configuración de 1 sola transformación a través de su ID
	def show
		augmentation = Augmentation.where(id: params[:id]).pluck(:configuration)
		if (augmentation.blank?)
			render json: "ID incorrecto".to_json
		else
			render json: augmentation[0]
		end		
	end

	#Si para el sitio que origina la request hay varias transformaciones: Se devuelven los ID de las distintas opciones
	#Si hay 1 sola transformación: Se devuelve la configuración
	#Si no hay transformaciones: Aviso
	def index
		if (params.has_key?(:url))
			augmentation = Augmentation.where(references: params[:url]).pluck(:configuration)
			if (augmentation.count > 1)
				response = Augmentation.where(references: params[:url]).pluck(:id)
			elsif (augmentation.count == 1)
				response = augmentation[0]
			else
				response = "No hay transformaciones guardadas para el sitio".to_json
			end
		else
			response = "URL necesaria".to_json
		end
		render json: response
	end

	#A las respuestas que son string se les aplica el método '.to_json' porque "render :json" se fija si el argumento es un string. 
	#Si lo es, supone que es un string de formato json y lo manda de 1.
	#Si no lo es, lo pasa por .to_json. Por eso debe hacerse manualmente.

	def create
		puts ""
		puts params["_json"][0]["urlCompareType"]
		puts params["_json"][0]["template"]
		data = params["_json"][0].to_json
		data.insert(0,'[')
		data.insert(-1,']')
		p data
		puts ""
		@augmentation = Augmentation.new(
			title: params["_json"][0]["url"],
			references: params["_json"][0]["url"],
			configuration: params["_json"][0].to_json,
			)
		@augmentation[:configuration].insert(0,'[')
		@augmentation[:configuration].insert(-1,']')
		@augmentation.save
		render json: @augmentation
	end
	def update
	end
	def delete
	end
	def augmentation_params
		params.require(:_json).permit(:"_json", :url, :urlCompareType, :template, pageAdaptation: [
			:"header-0" => [:"xpath", :"pattern"],
			:"header-1" => [:"xpath", :"pattern"],
			:"header-2" => [:"xpath", :"pattern"],
			:"navigation-0" => [:"xpath", :"pattern"],
			:"main-0" => [:"xpath", :"pattern"],
			:"main-1" => [:"xpath", :"pattern"],
			:"main-2" => [:"xpath", :"pattern"],
			:"footer-0" => [:"xpath", :"pattern"],
			:"footer-1" => [:"xpath", :"pattern"],
			:"footer-2" => [:"xpath", :"pattern"]
			])
	end
end