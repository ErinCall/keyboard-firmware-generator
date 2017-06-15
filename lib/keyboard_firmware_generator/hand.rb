module KeyboardFirmwareGenerator
  class Hand
    attr_reader :name
    attr_reader :layers

    def initialize(name, &block)
      @name = name.to_s
      @layers = []
      instance_eval &block
    end

    def layer(index, &block)
      layers << Layer.new(index, &block)
    end
  end
end
