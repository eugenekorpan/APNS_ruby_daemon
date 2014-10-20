require 'socket'
require 'json'
require_relative '../lib/apns/queue'


server = TCPServer.open(2000)
loop {
  client = server.accept
  json = JSON.parse(client.gets)
  Queue.add(json['device_token'], json['message'])
}
