class AddAdditionalInfoToSpreeOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :spree_orders, :additional_info, :text
  end
end
