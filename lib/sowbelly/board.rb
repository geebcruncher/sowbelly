module Sowbelly
  class Board    
    
    def initialize
      @pieces = Sowbelly::Constants::START_PIECE_STATE
    end
    
    
    def state
      {:pieces=>@pieces}
    end
    
    private
    
    
  end
end
