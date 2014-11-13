module DivergenceMeter
  # CLI Option Parser
  class CLI

    # @param [Array] argv ARGV
    def initialize(argv)
      @argv = argv
    end

    # parse argv
    # @return [void]
    def parse
      if @argv.include?('-h') || @argv.include?('--help')
        puts usage
        exit
      end

      if @argv.include?('-v') || @argv.include?('--version')
        puts version
        exit
      end

      if @argv.size < 2
        puts 'Invalid Argument'
        puts usage
        exit 1
      end
    end

    private

    def usage
<<-EOS
usage: #{ $PROGRAM_NAME } word1 word2
  -> levenshtein distance

or

usage: #{ $PROGRAM_NAME } target word1 word2
  -> target did you mean word1 or word2
EOS
    end

    def version
      "Version: #{ VERSION }"
    end
  end
end
