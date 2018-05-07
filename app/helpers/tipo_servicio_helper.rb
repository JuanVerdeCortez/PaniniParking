module TipoServicioHelper
  def tipo_servicio_for_select
   TipoServicio.pluck(:descripcion, :id)
   end	
end
