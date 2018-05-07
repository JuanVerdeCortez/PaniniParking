class CreateEstacionamientos < ActiveRecord::Migration[5.1]
  def change
    create_table :estacionamientos do |t|
      t.string :nombre
      t.string :direccion
      t.string :telefono
      t.decimal :precio
      t.string :foto
      t.string :dimensiones

      t.timestamps
    end
  end
end
