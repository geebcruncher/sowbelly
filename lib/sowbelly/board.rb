module Sowbelly
  class Board
    def initialize
      @pieces = Array.new(Sowbelly::Constants::START_PIECE_STATE)
      @bar = { Sowbelly::Constants::BLACK => 0, Sowbelly::Constants::WHITE => 0 }
    end

    def state
      { pieces: Array.new(@pieces), bar: @bar.clone }.freeze
    end

    def move!(start, n, colour)
      @pieces[start] = @pieces[start] - colour
      end_pos = end_pos(start, n, colour)
      @pieces[end_pos] = @pieces[end_pos] + colour
      @bar[-colour] += 1 if @pieces[end_pos] == 0
    end

    private

    def end_pos(start, n, colour)
      start + (n * colour)
    end
  end
end
