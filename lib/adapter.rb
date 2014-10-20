require_relative '../socket/client'

socket_client = SocketClient.new({device_token: ARGV[0],
                                  message: ARGV[1],
                                  port: 3002})
socket_client.perform
