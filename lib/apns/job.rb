require_relative 'setup'

class Job
  @queue = :apns_pushes

  def self.perform(device_token, message)
    # send push to APNS
    APNS.send_notification(device_token, message)
  end
end
