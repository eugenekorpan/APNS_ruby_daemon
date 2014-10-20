require 'apns'

class Setup
  def initialize(options = {})
    APNS.host = options[:host] || 'gateway.sandbox.push.apple.com'
    APNS.pem  = options[:cert] || './support/e2_dev_apns.pem'
    APNS.port = 2195
  end
end

