module KeyboardFirmwareGenerator
  class Layer
    attr_reader :index
    attr_reader :hands

    def initialize(index, &block)
      @index = index
      @hands = []
      instance_eval &block
    end

    def hand(name, &block)
      hands << Hand.new(name, &block)
    end
  end
end
