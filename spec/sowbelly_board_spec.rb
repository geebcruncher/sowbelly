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
    
    it "should not be possible to change pieces" do
      pieces = @board.state[:pieces]
      expect{pieces[1]=5}.to raise_error(RuntimeError,"can't modify frozen Array")
      expect(@board.state[:pieces]).to eq([2,0,0,0,0,-5,0,-3,0,0,0,5,-5,0,0,0,3,0,5,0,0,0,0,-2])
    end
    
    it "should not be possible to change state" do
      state = @board.state
      expect{state[:pieces]=[]}.to raise_error(RuntimeError,"can't modify frozen Hash")
      expect{state[:fred]="fred"}.to raise_error(RuntimeError,"can't modify frozen Hash")
    end
    
    
  
end