require 'daemons'
require_relative 'settings'

settings = Settings.get

if settings[:daemon_threads] && settings[:daemon_threads] > 1
  settings[:daemon_threads].times { Daemons.run('socket/listener.rb', {multiple: true}) }
else
  Daemons.run('socket/listener.rb')
end
