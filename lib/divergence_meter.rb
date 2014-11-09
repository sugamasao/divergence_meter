require 'divergence_meter/version'
require_relative 'divergence_meter/levenshtein_distance'
require_relative 'divergence_meter/cli'

module DivergenceMeter
  def self.run(str1, str2)
    LevenshteinDistance.run(str1, str2)
  end
end
