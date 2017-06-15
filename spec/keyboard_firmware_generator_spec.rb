require "spec_helper"

describe KeyboardFirmwareGenerator do
  it "has a version number" do
    expect(KeyboardFirmwareGenerator::VERSION).not_to be nil
  end
end
