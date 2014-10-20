require_relative '../socket/client'

socket_client = SocketClient.new({device_token: 'some token',
                                  message: 'some message'})
socket_client.perform
