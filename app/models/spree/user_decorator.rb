Spree::User.class_eval do
  validates :terms_of_service, acceptance: { message: "musi zostać zaakceptowana" }
end
