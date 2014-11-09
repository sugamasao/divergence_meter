module DivergenceMeter
  class CLI
    def initialize(argv)
      @argv = argv
    end

    def parse
      if @argv.include?('-h') || @argv.include?('--help')
        puts usage
        exit
      end

      if @argv.include?('-v') || @argv.include?('--version')
        puts version
        exit
      end

      unless @argv.size == 2
        puts 'Invalid Argument'
        puts usage
        exit 1
      end
    end

    private

    def usage
      "usage: #{ $PROGRAM_NAME } word1 word2"
    end

    def version
      "Version: #{ VERSION }"
    end
  end
end
