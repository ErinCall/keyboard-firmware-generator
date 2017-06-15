require "spec_helper"

describe KeyboardFirmwareGenerator::Hand do
  describe '#layer' do
    it 'initializes the given column' do
      layer = nil

      hand = KeyboardFirmwareGenerator::Hand.new(:left) do
        layer 4 do
          layer = self
        end
      end

      expect(hand.layers.first).to be_a(KeyboardFirmwareGenerator::Layer)
      expect(hand.layers.first).to be(layer)
      expect(hand.layers.first.index).to eq(4)
    end
  end
end
