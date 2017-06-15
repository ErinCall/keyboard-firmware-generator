require "spec_helper"

describe KeyboardFirmwareGenerator::Column do
  describe '#key' do
    it 'initializes the given column' do
      column = KeyboardFirmwareGenerator::Column.new(2) do
        key 'a'
      end

      expect(column.keys.first).to be_a(KeyboardFirmwareGenerator::Key)
      expect(column.keys.first.value).to eq('a')
    end
  end
end
