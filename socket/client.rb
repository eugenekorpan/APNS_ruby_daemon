require 'socket'
require 'json'

DEFAULT_HOST = 'localhost'
DEFAULT_PORT = 3002

class SocketClient
  attr_accessor :host, :port, :device_token, :message

  def initialize(options)
    @host         = options[:host] || DEFAULT_HOST
    @port         = options[:port] || DEFAULT_PORT
    @device_token = options[:device_token] || raise('you should provide device_token')
    @message      = options[:message] || raise('you should provide message')
  end

  def perform
    s = TCPSocket.open(host, port)
    options = {device_token: device_token, message: message}.to_json
    s.print(options)
    s.close
  end
end
