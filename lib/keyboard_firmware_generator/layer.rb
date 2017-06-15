module KeyboardFirmwareGenerator
  class Layer
    attr_reader :index
    attr_reader :columns

    def initialize(index, &block)
      @index = index
      @columns = []
      instance_eval &block
    end

    def column(index, &block)
      columns << Column.new(index, &block)
    end
  end
end
