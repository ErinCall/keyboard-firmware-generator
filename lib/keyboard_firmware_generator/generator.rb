module KeyboardFirmwareGenerator
  class Generator
    attr_reader :hands

    def initialize(&block)
      @hands = []
      instance_eval &block
    end

    def hand(name, &block)
      hands << Hand.new(name, &block)
    end
  end

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

  class Column
    attr_reader :index
    attr_reader :keys

    def initialize(index, &block)
      @index = index
      instance_eval &block
    end
  end
end
