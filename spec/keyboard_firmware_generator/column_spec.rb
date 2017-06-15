require "spec_helper"

describe KeyboardFirmwareGenerator::Column do
  describe '#character' do
    it 'initializes the given character' do
      column = KeyboardFirmwareGenerator::Column.new(2) do
        character 'a'
      end

      expect(column.characters.first).to be_a(KeyboardFirmwareGenerator::Character)
      expect(column.characters.first.value).to eq('a')
    end
  end
end
