require "divergence_meter/version"

module DivergenceMeter
  def self.run(str1, str2)
    list = Array.new(str1.size + 1) { Array.new(str2.size + 1, 0) }
    cost = 0

    # 初期化
    list.size.times do |n|
      list[n][0] = n
    end

    list[0].size.times do |n|
      list[0][n] = n
    end

    1.upto(str1.size) do |n|
      1.upto(str2.size) do |m|
        if str1[n-1] == str2[m-1]
          cost = 0
        else
          cost = 1
        end
        list[n][m] = [
          list[n - 1][m] + 1,
          list[n][m - 1] + 1,
          list[n - 1][m - 1] + cost
        ].min
      end
    end
    list[str1.size][str2.size]
  end
end

