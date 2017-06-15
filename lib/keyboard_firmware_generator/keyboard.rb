module KeyboardFirmwareGenerator
  class Keyboard
    attr_reader :layers

    def initialize(&block)
      @layers = []
      instance_eval &block
    end

    def layer(index, &block)
      if layers.map(&:index).include? index
        layers.find { |layer| layer.index == index }.instance_eval &block
      else
        layers << Layer.new(index, &block)
      end
    end
  end
end
