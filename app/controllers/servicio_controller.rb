class ServicioController < ApplicationController

	def nuevo_servicio
		@servicio = Servicio.new
	end

	def servicio
		@servicio = Servicio.take(25)
		 if params[:f_tipo_servicio_cod].present? 
		 	@servicio = Servicio.where("tipo_servicio_cod = ?", params[:f_tipo_servicio_cod])
		 end 
		  if params[:f_descripcion].present? 
		 	@servicio = Servicio.where("descripcion LIKE ?", "%#{params[:f_descripcion]}%")
		 end 
	end 
 

	def editar_servicio
		@servicio = Servicio.find(params[:id])
		@tiposServicios = TipoServicio.all
		@tipoServicio = TipoServicio.find(@servicio.tipo_servicio_cod)
		@estacionamientos = Estacionamiento.all
		@estacionamiento = Estacionamiento.find(@servicio.estacionamiento_cod)
	end 

	def update
		@servicio = Servicio.find(params[:id])
		if @servicio.update_attributes(servicio_params)
			redirect_to :action => :servicio, :id => @servicio.id
		else 
			render :editar_servicio
		end
	end 

	def create
		@servicio = Servicio.new(servicio_params)
		if @servicio.save
			redirect_to :action => :servicio
		else 
		   render :nuevo_servicio
		end 
	end

	def eliminar_servicio
	    @servicioDelete = Servicio.find(params[:id])
	    @servicioDelete.destroy
	  	redirect_to :action => :servicio
	end

private
	def servicio_params
		params.require(:servicio).permit(:tipo_servicio_cod,:descripcion,:tarifa,:estacionamiento_cod)
	end
end
