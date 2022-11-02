module PluginRequest
  class Activate
    include PluginRequest
    attr_accessor :index
    
    def initialize(index)
      @index = index
    end
  end
end