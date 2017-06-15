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

  describe '#hand' do
    it 'initializes the given hand' do
      hand = nil

      keyboard = KeyboardFirmwareGenerator::Keyboard.new do
        hand(:left) do
          hand = self
        end
      end

      expect(keyboard.hands.first).not_to be_nil
      expect(keyboard.hands.first).to be(hand)
      expect(keyboard.hands.first.name).to eq('left')
    end
  end
end
