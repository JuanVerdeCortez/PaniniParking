class AlquilerController < ApplicationController
	
 
	def nuevo_alquiler
		@alquiler = Alquiler.new
	end

	def alquiler
		@alquiler = Alquiler.take(25)
		 if params[:f_fin].present?
		 	@alquiler = Alquiler.where("fecha_fin = ?", params[:f_fin])
		 end 
		 if params[:f_estacionamiento_cod].present?
		 	@alquiler = Alquiler.where("estacionamiento_cod = ?", params[:f_estacionamiento_cod])
		 end 
	end 

	def create
		@alquiler = Alquiler.new(alquiler_params)
		if @alquiler.save
			redirect_to :action => :alquiler
		else 
		   render :nuevo_alquiler
		end 
	end

	def editar_alquiler
		@alquiler = Alquiler.find(params[:id])
		@estacionamientos = Estacionamiento.all
		@estacionamiento = Estacionamiento.find(@alquiler.estacionamiento_cod)
		@serviciosAdicionales = Servicio.all
		@servicioAdicional = Servicio.find(@alquiler.servicio_adicional_cod)
	end 

	def update
		@alquiler = Alquiler.find(params[:id])
		if @alquiler.update_attributes(alquiler_params)
			redirect_to :action => :alquiler, :id => @alquiler.id
		else 
			render :editar_alquiler
		end
	end 

	def eliminar_alquiler
	    @alquilerDelete = Alquiler.find(params[:id])
	    @alquilerDelete.destroy
	  	redirect_to :action => :alquiler
	end

private
	def alquiler_params
		params.require(:alquiler).permit(:estacionamiento_cod,:fecha_inicio,:fecha_fin,:servicio_adicional_cod)
	end


end