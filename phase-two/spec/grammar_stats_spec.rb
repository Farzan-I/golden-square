require 'grammar_stats'

RSpec.describe GrammarStats do
  context "#check method" do
    it "fails if given an empty string" do
      grammar_stats = GrammarStats.new
      expect { grammar_stats.check("") }.to raise_error "Text can't be given empty"
    end

    it "returns true for texts that start with a capital" do
      grammar_stats = GrammarStats.new
      expect(grammar_stats.check("Hello there!")).to eq true
    end

    it "returns true for texts that end with a sentence-ending punctuation mark" do
      grammar_stats = GrammarStats.new
      expect(grammar_stats.check("Hello there!")).to eq true
    end
  end

  context "#percentage_good method" do
    it "returns the checked string as an integer" do
      grammar_stats = GrammarStats.new
      expect(grammar_stats.percentage_good).to eq 100
    end
  end
end
