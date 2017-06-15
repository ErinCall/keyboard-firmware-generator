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

    it 'reopens the given hand' do
      layer = KeyboardFirmwareGenerator::Layer.new(4) do
        hand 'left' do
          column(1) {}
        end

        hand 'left' do
          column(2) {}
        end
      end

      expect(layer.hands.length).to eq(1)
      expect(layer.hands.first.columns.length).to eq(2)
    end
  end
end
