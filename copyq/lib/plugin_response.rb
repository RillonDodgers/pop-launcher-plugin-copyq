require_relative 'plugin_response/append'

module PluginResponse
  def self.flush
    $stdout.flush
  end

  def self.finish
    $stdout.write("Finished".to_json)
    $stdout.write("\n")
    self.flush
  end

  def self.close
    $stdout.write("Close".to_json)
    $stdout.write("\n")
    self.flush
  end

  def self.clear
    $stdout.write("Clear".to_json)
    $stdout.write("\n")
    self.flush
  end
end