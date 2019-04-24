class SlotMachine
  # needs initializing

  # need a way to keep a score

  def score(reels)

    # create a table of scores
    score_table = {
      joker: { 2 => 25, 3 => 50},
      star:   { 2 => 20, 3 => 40},
      bell:  { 2 => 15, 3 => 30},
      seven:  { 2 => 10, 3 => 20},
      cherry: { 2 => 5, 3 => 10}
    }

    sum = 0

    # create list of allowed values
    allowed_values = score_table.keys.map {|key| key.to_s}

    # check if all elements in reels are in list of allowed values
    return 0 unless reels.all? { |val| allowed_values.include?(val) }

    # check result if elements in reels are different return 0
    return 0 unless reels.any? { |val| reels.count(val) > 1 }

    # if all three elements in reels are the same return x
    if reels.any? { |val| reels.count(val) == 3 }

      # if so, check the symbol´s value
      # then calculate the score
      return score_table[reels[0].to_sym][3]
    end

    # check if there is a joker
    joker_count = reels.count("joker")
    return 0 unless joker_count.positive?

    # check if there are two jokers
    # if so, calculate the score
    return score_table[:joker][2] if joker_count == 2

    return score_table[reels.find {|val| val != "joker"}.to_sym][2]

      # check which other symbol occurs twice

    # look up the score

  end

end


# score_table.keys do |key|

#    lookup = reels.count(key.to_s)

#    if lookup == 2

#      if reels.count("joker") == 1

#      end
#    elsif lookup == 3
#    end
# end
