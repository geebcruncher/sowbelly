require 'spec_helper'

describe Sowbelly::Board do
  before(:each) do
    @board = described_class.new
  end
  
  it "has initial state" do
    state = @board.state
    expect(state.class).to be Hash
    pieces = state[:pieces]      
    expect(pieces).to_not be nil
    expect(pieces.length).to be 24
      expect(pieces).to eq([2,0,0,0,0,-5,0,-3,0,0,0,5,-5,0,0,0,3,0,5,0,0,0,0,-2])
  end
  
end