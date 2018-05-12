class CreateCotizCloMuls < ActiveRecord::Migration[5.1]
  def change
    create_table :cotiz_clo_muls do |t|
      t.string :correo
      t.string :nombre

      t.timestamps
    end
  end
end
