module KeyboardFirmwareGenerator
  class Column
    attr_reader :index
    attr_reader :characters

    def initialize(index, &block)
      @index = index
      @characters = []
      instance_eval &block
    end

    def character(value)
      characters << Character.new(value)
    end
  end
end
