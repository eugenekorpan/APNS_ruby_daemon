require 'socket'
require 'json'
require_relative '../settings'
require_relative '../lib/apns/queue'
require_relative '../lib/apns/setup'

Setup.new(Settings.get)

server = TCPServer.open(Settings.get[:port])
loop {
  client = server.accept
  json = JSON.parse(client.gets)
  Queue.add(json['device_token'], json['message'])
}
