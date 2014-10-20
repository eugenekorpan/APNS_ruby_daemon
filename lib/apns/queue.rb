require 'rubygems'
require 'resque'
require_relative 'job'

class Queue
  def self.add(device_token, message)
    # add job to the queue
    raise "No device_token provided" unless device_token
    raise "No message provided" unless message
    puts "Message '#{message}' was successfully added to the queue"
    Resque.enqueue(Job, device_token, message)
  end
end
