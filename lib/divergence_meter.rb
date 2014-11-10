require 'divergence_meter/version'
require_relative 'divergence_meter/levenshtein_distance'
require_relative 'divergence_meter/cli'

module DivergenceMeter
  def self.run(word1, word2)
    LevenshteinDistance.run(word1, word2)
  end
end
