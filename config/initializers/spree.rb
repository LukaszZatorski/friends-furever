# Configure Spree Preferences
#
# Note: Initializing preferences available within the Admin will overwrite any changes that were made through the user interface when you restart.
#       If you would like users to be able to update a setting with the Admin it should NOT be set here.
#
# Note: If a preference is set here it will be stored within the cache & database upon initialization.
#       Just removing an entry from this initializer will not make the preference value go away.
#       Instead you must either set a new value or remove entry, clear cache, and remove database entry.
#
# In order to initialize a setting do:
# config.setting_name = 'new value'
Spree.config do |config|
  # Example:
  # Uncomment to stop tracking inventory levels in the application
  # config.track_inventory_levels = false
  config.company = true
  config.products_per_page = 6
  config.show_variant_full_price = true
end

Spree.user_class = "Spree::User"

Spree::PermittedAttributes.user_attributes.push(:terms_of_service)
Spree::PermittedAttributes.checkout_attributes.push(:additional_info)

Spree::Money.default_formatting_rules[:decimal_mark] = "."
Spree::Money.default_formatting_rules[:thousands_separator] = ","

Rails.application.config.spree.payment_methods << Spree::PaymentMethod::Tpay
