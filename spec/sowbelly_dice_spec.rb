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
    
    it "changes" do
      dice = Sowbelly::Dice.new
      not_one = false
      is_one = false
      random_test_times do
        not_one = not_one | dice.val[0]!=1 
        is_one = is_one | dice.val[0]==1 
      end
        
      expect(not_one).to be true
      expect(is_one).to be true
      
    end
    
    def random_test_times
      #TODO: change to a block
      50
    end
  
end
