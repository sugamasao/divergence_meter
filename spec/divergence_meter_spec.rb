require 'spec_helper'

describe DivergenceMeter do
  it 'has a version number' do
    expect(DivergenceMeter::VERSION).not_to be nil
  end

  describe '.distance' do
    it 'hoge vs hoga' do
      expect(DivergenceMeter.distance('hoge', 'hoga')).to eq(1)
    end

    it 'apple vs play' do
      expect(DivergenceMeter.distance('apple', 'play')).to eq(4)
    end

    it 'perl vs pearl' do
      expect(DivergenceMeter.distance('perl', 'pearl')).to eq(1)
    end
  end

  describe '.もしかして(did_you_mean)' do
    it '__send vs [__send__, send]' do
      expect(DivergenceMeter.もしかして(':__send', methods)).to eq(:__send__)
    end
    it '__send vs [send, __send__](reverse)' do
      expect(DivergenceMeter.もしかして(':__send', methods.reverse)).to eq(:__send__)
    end
    it 'tire, retire' do
      expect(DivergenceMeter.もしかして('tire', %w(tire retire))).to eq('tire')
      expect(DivergenceMeter.もしかして('rtire', %w(tire retire))).to eq('tire')
      expect(DivergenceMeter.もしかして('abtire', %w(tire retire))).to eq('retire')
    end
  end
end
