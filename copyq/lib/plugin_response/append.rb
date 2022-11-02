module PluginResponse
  class Append
    include PluginResponse

    attr_accessor :id, :name, :description, :keywords, :icon, :exec, :window

    def self.respond!(...)
      new(...).respond!
    end

    def initialize(id, name, description, **kwargs)
      @id = id
      @name = name
      @description = description
      kwargs.keys.each do |meth|
        if self.instance_methods.include?(meth)
          instance_variable_set("@#{meth}", kwargs[meth])
        end
      end
    end

    def respond!
      $stdout.write(json)
      $stdout.write("\n")
    end

    private

    def json
      {
        Append: {
          id: @id,
          name: @name,
          description: @description,
          keywords: @keywords,
          icon: @icon,
          exec: @exec,
          window: @window
        }
      }.to_json
    end

    def name
      @response.length > 43 ? @response[0, 40] + "..." : @response
    end
  end
end