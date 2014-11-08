require 'spec_helper'

describe DivergenceMeter do
  it 'has a version number' do
    expect(DivergenceMeter::VERSION).not_to be nil
  end

  it 'hoge vs hoga' do
    expect(DivergenceMeter.run('hoge', 'hoga')).to eq(1)
  end

  it 'apple vs play' do
    expect(DivergenceMeter.run('apple', 'play')).to eq(4)
  end

  it 'perl vs pearl' do
    expect(DivergenceMeter.run('perl', 'pearl')).to eq(1)
  end
end
