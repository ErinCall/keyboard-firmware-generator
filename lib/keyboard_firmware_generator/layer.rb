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
      if hands.map(&:name).include? name
        hands.find {|hand| hand.name == name}.instance_eval(&block)
      else
        hands << Hand.new(name, &block)
      end
    end
  end
end
