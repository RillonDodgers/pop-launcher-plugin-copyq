module PluginRequest
  class Search
    include PluginRequest
    attr_accessor :query, :params
    
    def initialize(query)
      @query = query
    end

    def params
      @params ||= query.split(" ").drop(1)
    end
  end
end