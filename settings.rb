require 'yaml'

class Settings
  def self.get
    YAML.load_file(File.join(File.dirname(File.expand_path(__FILE__)), 'config.yml'))
  end
end
