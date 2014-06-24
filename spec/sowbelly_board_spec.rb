require 'spec_helper'

describe Sowbelly::Board do
  before(:each) do
    @board = described_class.new
  end
  
  it "has initial state" do
    state = @board.state
    expect(state.class).to be Hash
  end
  
end