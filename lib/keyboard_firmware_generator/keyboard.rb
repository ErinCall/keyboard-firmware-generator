module KeyboardFirmwareGenerator
  class Keyboard
    attr_reader :layers

    def initialize(&block)
      @layers = []
      instance_eval &block
    end

    def layer(index, &block)
      if layers.map(&:index).include? index
        layers.find do |layer|
          layer.index == index
        end.instance_eval &block
      else
        layers << Layer.new(index, &block)
      end
    end
  end
end
