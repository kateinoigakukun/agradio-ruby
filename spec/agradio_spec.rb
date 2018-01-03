require "spec_helper"

describe AGRadio do
  it "has a version number" do
    expect(AGRadio::VERSION).not_to be nil
  end

  it "record" do
    AGRadio::Recorder.record 10, "/tmp/ag_radio.mp4"
  end

end
