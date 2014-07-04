require 'spec_helper'

describe Sowbelly::Constants do
  it 'correctly defines black and white' do
    expect(Sowbelly::Constants::BLACK).to be -1
    expect(Sowbelly::Constants::WHITE).to be 1
  end

  it 'correctly describes the start piece state' do
    expect(Sowbelly::Constants::START_PIECE_STATE).to eq([2, 0, 0, 0, 0, -5, 0, -3, 0, 0, 0, 5, -5, 0, 0, 0, 3, 0, 5, 0, 0, 0, 0, -2])
  end
end
