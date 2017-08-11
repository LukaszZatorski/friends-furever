module Spree
  class PaymentMethod::Tpay < PaymentMethod
    preference :tpay_account_id, :string
    preference :tpay_security_code, :string

    def payment_profiles_supported?
        false
    end

    def redirect_url(params = {})
      md5sum = Digest::MD5.hexdigest(self.preferred_tpay_account_id.to_s+params[:kwota].to_s+params[:crc].to_s+self.preferred_tpay_security_code.to_s)
      params.merge!({id: self.preferred_tpay_account_id, md5sum: md5sum})
      URI::HTTPS.build(host: "secure.tpay.com", query: params.to_query).to_s
    end
  end
end
