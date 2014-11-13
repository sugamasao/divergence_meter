require 'divergence_meter/version'
require_relative 'divergence_meter/levenshtein_distance'
require_relative 'divergence_meter/cli'

# DiveergenceMeter main module
module DivergenceMeter
  class << self

    # @param [String] word1 target1
    # @param [String] word2 target2
    # @return [Fixnum] Levenshtein Distance
    def distance(word1, word2)
      LevenshteinDistance.run(word1, word2)
    end

    # @param [String] target target
    # @param [Array<String>] words check words
    # @return [String] did you mean word
    def did_you_mean(target, words)
      size = target.size

      Array(words).map { |word|
        { word: word, distance: distance(target, word) }
      }.sort { |a, b|
        if a[:distance] == b[:distance]
          (size - a[:word].size).abs <=> (size - b[:word].size).abs
        else
          a[:distance] <=> b[:distance]
        end
      }.first[:word]
    end

    alias_method :もしかして, :did_you_mean
  end
end
