class AddCantidadToCotizCloMuls < ActiveRecord::Migration[5.1]
  def change
    add_column :cotiz_clo_muls, :cantidad, :string
  end
end
