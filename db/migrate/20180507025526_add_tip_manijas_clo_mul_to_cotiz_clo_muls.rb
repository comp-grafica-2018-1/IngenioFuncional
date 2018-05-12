class AddTipManijasCloMulToCotizCloMuls < ActiveRecord::Migration[5.1]
  def change
    add_column :cotiz_clo_muls, :tipManijasCloMul, :string
  end
end
