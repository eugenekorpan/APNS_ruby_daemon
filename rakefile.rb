ROOT_PATH = File.expand_path("..", __FILE__)
puts ROOT_PATH
load File.join(ROOT_PATH, 'lib/tasks/resque.rake')
