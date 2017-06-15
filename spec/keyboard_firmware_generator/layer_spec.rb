require "spec_helper"

describe KeyboardFirmwareGenerator::Layer do
  describe '#hand' do
    it 'initializes the given hand' do
      hand = nil

      layer = KeyboardFirmwareGenerator::Layer.new(4) do
        hand 'left' do
          hand = self
        end
      end

      expect(layer.hands.first).to be_a(KeyboardFirmwareGenerator::Hand)
      expect(layer.hands.first).to be(hand)
      expect(layer.hands.first.name).to eq('left')
    end
  end
end
