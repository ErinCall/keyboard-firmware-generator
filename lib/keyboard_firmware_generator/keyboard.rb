module KeyboardFirmwareGenerator
  class Keyboard
    attr_reader :layers

    def initialize(&block)
      @layers = []
      instance_eval &block
    end

    def layer(index, &block)
      layers << Layer.new(index, &block)
    end
  end
end
