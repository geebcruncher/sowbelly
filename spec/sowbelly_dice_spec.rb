require 'spec_helper'

describe Sowbelly::Dice do
  it 'has 2 values' do
    expect(Sowbelly::Dice.new.val.length).to be 2
    expect(Sowbelly::Dice.new.val.class).to be Array
  end

  # TODO: look for gem/code that tests for randomness
  it 'within range' do
    dice = Sowbelly::Dice.new
    random_test_times.times do |_index|
      expect(dice.val[0]).to be >= 1
      expect(dice.val[0]).to be <= 6
      expect(dice.val[1]).to be >= 1
      expect(dice.val[1]).to be <= 6
    end
  end

  it 'changes between rolls' do
    dice = Sowbelly::Dice.new
    not_one = false
    is_one = false
    not_one_1 = false
    is_one_1 = false
    random_test_times.times do
      dice.roll
      not_one = not_one || dice.val[0] != 1
      is_one = is_one || dice.val[0] == 1
      not_one_1 = not_one_1 || dice.val[1] != 1
      is_one_1 = is_one_1 || dice.val[1] == 1
    end
    expect(not_one).to be true
    expect(is_one).to be true
    expect(not_one_1).to be true
    expect(is_one_1).to be true

  end

  it 'does not change between rolls' do
    dice = Sowbelly::Dice.new
    current_val = dice.val
    random_test_times.times do
      expect(current_val).to eq(dice.val)
    end
  end

  it 'cannot be tampered with' do
    dice = Sowbelly::Dice.new
    until dice.val[0] != 1 && dice.val[1] != 1
      dice.rol l
  end
    expect(dice.val[0]).to_not be 1
    expect(dice.val[1]).to_not be 1
    dice.val[0] = 1
    dice.val[1] = 1
    expect(dice.val[0]).to_not be 1
    expect(dice.val[1]).to_not be 1
  end

  def random_test_times
    # TODO: change to a block
    50
  end

end
