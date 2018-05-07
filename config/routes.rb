Rails.application.routes.draw do


  root 'static#login'
  
  #modulo de alquiler
  get "alquiler" => "alquiler#alquiler"
  get "nuevo_alquiler" => "alquiler#nuevo_alquiler"
  get "alquiler/:id/editar_alquiler" => "alquiler#editar_alquiler"
  get "alquiler/:id" => "alquiler#eliminar_alquiler"
  post "alquiler" => "alquiler#create"
  post "alquiler/editar_alquiler/:id" => "alquiler#update"

  
  #modulo de servicios
  get "servicio" => "servicio#servicio"
  get "nuevo_servicio" => "servicio#nuevo_servicio"
  get "servicio/:id/editar_servicio" => "servicio#editar_servicio"
  get "servicio/:id" => "servicio#eliminar_servicio"
  post "servicio" => "servicio#create"
  post "servicio/editar_servicio/:id" => "servicio#update"
  
  get "inicio" => "static#inicio"
  get "estacionamiento" => "static#estacionamiento"
  get "publicidad" => "static#publicidad"
  get 'registro', controller: :static, action: :registro, alias: 'registro'
  get 'nuevo_estacionamiento', controller: :static, action: :nuevo_estacionamiento, alias: 'nuevo_estacionamiento'
 
end
