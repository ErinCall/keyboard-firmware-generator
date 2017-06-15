require "spec_helper"

describe KeyboardFirmwareGenerator::Keyboard do
  describe '#new' do
    it "takes a block and instance_evals it" do
      this = nil
      KeyboardFirmwareGenerator::Keyboard.new do
        this = self
      end
      expect(this).to be_a(KeyboardFirmwareGenerator::Keyboard)
    end
  end

  describe '#layer' do
    it 'initializes the given layer' do
      layer = nil

      keyboard = KeyboardFirmwareGenerator::Keyboard.new do
        layer(4) do
          layer = self
        end
      end

      expect(keyboard.layers.first).to be_a(KeyboardFirmwareGenerator::Layer)
      expect(keyboard.layers.first).to be(layer)
      expect(keyboard.layers.first.index).to eq(4)
    end
  end
end
