require_relative 'levenshtein_distance'

module DivergenceMeter
  # did you mean?
  class DidYouMean
    # initialize
    # @param [String] target base word
    # @param [Array] words check words
    def initialize(target, words)
      @target = target
      @words = Array(words)
    end

    # calculate did you mean?
    # @return [String] word
    def run
      target_size = @target.size

      @words.map do |word|
        { word: word, distance: LevenshteinDistance.run(@target, word) }
      end.sort do |a, b|
        sort_distance(a, b, target_size)
      end.first[:word]
    end

    private

    # sort by distance
    # @param [Hash] a sort object a
    # @param [Hash] b sort object b
    # @param [Fixnum] target_size target word string size
    # @return [Fixnum] sort point
    def sort_distance(a, b, target_size)
      a_distance = a[:distance]
      b_distance = b[:distance]

      if a_distance == b_distance
        (target_size - a[:word].size).abs <=> (target_size - b[:word].size).abs
      else
        a_distance <=> b_distance
      end
    end
  end
end
