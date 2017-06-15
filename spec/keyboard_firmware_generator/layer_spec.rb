require "spec_helper"

describe KeyboardFirmwareGenerator::Layer do
  describe '#column' do
    it 'initializes the given column' do
      column = nil

      layer = KeyboardFirmwareGenerator::Layer.new(:left) do
        column 4 do
          column = self
        end
      end

      expect(layer.columns.first).to be_a(KeyboardFirmwareGenerator::Column)
      expect(layer.columns.first).to be(column)
      expect(layer.columns.first.index).to eq(4)
    end
  end
end
