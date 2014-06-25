module Sowbelly
  class Board
    def initialize
      @pieces = Array.new(Sowbelly::Constants::START_PIECE_STATE)
    end

    def state
      { pieces: Array.new(@pieces) }.freeze
    end

    def move!(start, n, colour)
      @pieces[start] = @pieces[start] - colour
      end_pos = end_pos(start, n, colour)
      @pieces[end_pos] = @pieces[end_pos] + colour
    end

    private

    def end_pos(start, n, colour)
      start + (n * colour)
    end
  end
end
