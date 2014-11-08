module DivergenceMeter
  class LevenshteinDistance
    def self.run(str1, str2)
      new.run(str1, str2)
    end

    def run(str1, str2)
      list = create_list(str1.size, str2.size)

      1.upto(str1.size) do |n|
        1.upto(str2.size) do |m|
          list[n][m] = [
            list[n - 1][m] + 1,
            list[n][m - 1] + 1,
            list[n - 1][m - 1] + cost(str1[n - 1], str2[m - 1])
          ].min
        end
      end

      list[str1.size][str2.size]
    end

    private

    def create_list(str1_size, str2_size)
      list = Array.new(str1_size + 1) { Array.new(str2_size + 1, 0) }

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
