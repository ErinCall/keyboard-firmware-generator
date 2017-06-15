module KeyboardFirmwareGenerator
  class Column
    attr_reader :index
    attr_reader :keys

    def initialize(index, &block)
      @index = index
      instance_eval &block
    end
  end
end
