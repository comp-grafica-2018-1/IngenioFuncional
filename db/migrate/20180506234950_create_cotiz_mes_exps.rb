class CreateCotizMesExps < ActiveRecord::Migration[5.1]
  def change
    create_table :cotiz_mes_exps do |t|
      t.string :correo
      t.string :nombre

      t.timestamps
    end
  end
end
