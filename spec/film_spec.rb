require 'rspec'
require_relative '../lib/film.rb'

describe Film do
  let(:film) { Film.new("test", "producer", 1986) }

  describe '#new' do

    it "return producer" do
      expect(film.producer).to eq "producer"
    end

    it "return name" do
      expect(film.name).to eq "test"
    end

    it "return year" do
      expect(film.year).to eq 1986
    end
  end

  describe '#to_s' do
    it 'return string with name and year' do
      expect(film.to_s).to eq "test (1986)"
    end
  end
end
