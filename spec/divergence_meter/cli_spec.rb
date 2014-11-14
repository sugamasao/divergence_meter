require 'spec_helper'
require 'divergence_meter/cli'

describe DivergenceMeter::CLI do
  before do
    $stdout = File.open(File::NULL, 'w')
    $stderr = File.open(File::NULL, 'w')
  end
  after do
    $stdout.close unless $stdout.closed?
    $stdout = STDOUT
    $stderr.close unless $stderr.closed?
    $stderr = STDERR
  end

  describe '#parse' do
    it 'help' do
      expect { DivergenceMeter::CLI.new(%w(-h)).parse }.to raise_error(SystemExit)
      expect { DivergenceMeter::CLI.new(%w(--help)).parse }.to raise_error(SystemExit)
    end

    it 'version' do
      expect { DivergenceMeter::CLI.new(%w(-v)).parse }.to raise_error(SystemExit)
      expect { DivergenceMeter::CLI.new(%w(--version)).parse }.to raise_error(SystemExit)
    end

    it 'unknown arguments' do
      expect { DivergenceMeter::CLI.new(%w(hoge)).parse }.to raise_error(SystemExit)
      expect { DivergenceMeter::CLI.new(%w(--foo)).parse }.to raise_error(SystemExit)
    end

    it 'normal arguments' do
      expect { DivergenceMeter::CLI.new(%w(hoge fuga)).parse }.not_to raise_error
      expect { DivergenceMeter::CLI.new(%w(foo bar baz)).parse }.not_to raise_error
    end
  end
end
