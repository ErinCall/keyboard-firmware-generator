module KeyboardFirmwareGenerator
  class Column
    attr_reader :index
    attr_reader :keys

    def initialize(index, &block)
      @index = index
      @keys = []
      instance_eval &block
    end

    def key(value)
      keys << Key.new(value)
    end
  end
end
