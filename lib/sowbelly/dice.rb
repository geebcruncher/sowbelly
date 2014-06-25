module Sowbelly
  class Dice
    def initialize      
      roll
    end
    
    def roll
      @dice = [rand(6)+1,rand(6)+1]      
    end
    
    def val
      Array.new(@dice)  
    end
    
  end
end