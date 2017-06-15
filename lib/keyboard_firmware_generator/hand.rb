module KeyboardFirmwareGenerator
  class Hand
    attr_reader :name
    attr_reader :columns

    def initialize(name, &block)
      @name = name.to_s
      @columns = []
      instance_eval &block
    end

    def column(index, &block)
      columns << Column.new(index, &block)
    end
  end
end
