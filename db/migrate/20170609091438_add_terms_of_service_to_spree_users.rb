class AddTermsOfServiceToSpreeUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :spree_users, :terms_of_service, :boolean
  end
end
