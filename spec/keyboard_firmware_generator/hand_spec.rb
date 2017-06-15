require "spec_helper"

describe KeyboardFirmwareGenerator::Hand do
  describe '#column' do
    it 'initializes the given column' do
      column = nil

      hand = KeyboardFirmwareGenerator::Hand.new(:left) do
        column 4 do
          column = self
        end
      end

      expect(hand.columns.first).to be_a(KeyboardFirmwareGenerator::Column)
      expect(hand.columns.first).to be(column)
      expect(hand.columns.first.index).to eq(4)
    end
  end
end
