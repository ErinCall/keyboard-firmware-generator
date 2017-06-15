require "spec_helper"

describe KeyboardFirmwareGenerator do
  it "has a version number" do
    expect(KeyboardFirmwareGenerator::VERSION).not_to be nil
  end

  describe KeyboardFirmwareGenerator::Generator do
    it "takes a block and instance_evals it" do
      this = nil
      KeyboardFirmwareGenerator::Generator.new do
        this = self
      end
      expect(this).to be_a(KeyboardFirmwareGenerator::Generator)
    end

    describe '#hand' do
      it 'initializes the given hand' do
        hand = nil

        generator = KeyboardFirmwareGenerator::Generator.new do
          hand(:left) do
            hand = self
          end
        end

        expect(generator.hands.first).not_to be_nil
        expect(generator.hands.first).to be(hand)
        expect(generator.hands.first.name).to eq('left')
      end
    end
  end

  describe KeyboardFirmwareGenerator::Hand do
    describe '#column' do
      it 'initializes the given column' do
        column = nil

        hand = KeyboardFirmwareGenerator::Hand.new(:left) do
          column 4 do
            column = self
          end
        end

        expect(hand.columns.first).not_to be_nil
        expect(hand.columns.first).to be(column)
        expect(hand.columns.first.index).to eq(4)
      end
    end
  end
end
