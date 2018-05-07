class CreateAlquilers < ActiveRecord::Migration[5.1]
  def change
    create_table :alquilers do |t|
      t.integer :estacionamiento_cod
      t.date :fecha_inicio
      t.date :fecha_fin
      t.integer :servicio_adicional_cod

      t.timestamps
    end
  end
end
