module KeyboardFirmwareGenerator
  class Keyboard
    attr_reader :hands

    def initialize(&block)
      @hands = []
      instance_eval &block
    end

    def hand(name, &block)
      hands << Hand.new(name, &block)
    end
  end
end
