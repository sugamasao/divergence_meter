module DivergenceMeter
  class LevenshteinDistance
    def self.run(word1, word2)
      new.run(word1, word2)
    end

    def run(word1, word2)
      list = create_list(word1.size, word2.size)

      1.upto(word1.size) do |n|
        1.upto(word2.size) do |m|
          list[n][m] = [
            list[n - 1][m] + 1,
            list[n][m - 1] + 1,
            list[n - 1][m - 1] + cost(word1[n - 1], word2[m - 1])
          ].min
        end
      end

      list[word1.size][word2.size]
    end

    private

    def create_list(word1_size, word2_size)
      list = Array.new(word1_size + 1) { Array.new(word2_size + 1, 0) }

      list.size.times do |n|
        list[n][0] = n
      end

      list[0].size.times do |n|
        list[0][n] = n
      end

      list
    end

    def cost(char1, char2)
      char1 == char2 ? 0 : 1
    end
  end
end
