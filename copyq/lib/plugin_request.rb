require_relative 'plugin_request/activate'
require_relative 'plugin_request/search'

module PluginRequest

  def self.parse(stdin)
    json = parse_json(stdin)
    klass_name = json.nil? ? stdin : json.keys.first
    klass = Object.const_get("PluginRequest::#{klass_name}")
    json.nil? ? klass.new : klass.new(json[klass_name])
  end

  def class_to_sym
    self.class.name.split('::').last.to_sym
  end

  private

  def self.parse_json(stdin)
    JSON.parse(stdin)
  rescue JSON::ParserError
    nil
  end

end