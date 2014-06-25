require 'spec_helper'

describe Sowbelly::Dice do
  it "has 2 values" do
    expect(Sowbelly::Dice.new.val.length).to be 2
    expect(Sowbelly::Dice.new.val.class).to be Array    
  end
    
    #TODO: look for gem/code that tests for randomness
    it "within range" do
      dice = Sowbelly::Dice.new
      random_test_times.times.with_index do |index|
        print "." if index%100==0
        expect(dice.val[0]).to be >= 1
        expect(dice.val[0]).to be <= 6
        expect(dice.val[1]).to be >= 1
        expect(dice.val[1]).to be <= 6                
      end
    end
    
    def random_test_times
      1000
    end
  
end