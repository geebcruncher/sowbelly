require 'spec_helper'

describe Sowbelly::Constants do
  it "correctly defines black and white" do
    expect(Sowbelly::Constants::BLACK).to be -1
    expect(Sowbelly::Constants::WHITE).to be 1
  end
end
