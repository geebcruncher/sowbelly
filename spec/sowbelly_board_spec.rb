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
    
    it "prevents pieces being interferred with" do
      pieces = @board.state[:pieces]
      pieces[1]=5
      expect(@board.state[:pieces]).to eq([2,0,0,0,0,-5,0,-3,0,0,0,5,-5,0,0,0,3,0,5,0,0,0,0,-2])
    end
    
    it "prevents the state hash interferred with" do
      state = @board.state
      expect{state[:pieces]=[]}.to raise_error(RuntimeError,"can't modify frozen Hash")
      expect{state[:fred]="fred"}.to raise_error(RuntimeError,"can't modify frozen Hash")
    end
    
    it "allows black to move" do      
      expect(@board.state[:pieces]).to eq([2,0,0,0,0,-5,0,-3,0,0,0,5,-5,0,0,0,3,0,5,0,0,0,0,-2])
      @board.move!(12,5,Sowbelly::Constants::BLACK)
      pieces = @board.state[:pieces]
      expect(pieces).to eq([2,0,0,0,0,-5,0,-4,0,0,0,5,-4,0,0,0,3,0,5,0,0,0,0,-2])
    end
    
    it "allows white to move" do      
      expect(@board.state[:pieces]).to eq([2,0,0,0,0,-5,0,-3,0,0,0,5,-5,0,0,0,3,0,5,0,0,0,0,-2])
      @board.move!(0,3,Sowbelly::Constants::WHITE)
      pieces = @board.state[:pieces]
      expect(pieces).to eq([1,0,0,1,0,-5,0,-3,0,0,0,5,-5,0,0,0,3,0,5,0,0,0,0,-2])
    end
    
    
  
end